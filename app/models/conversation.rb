class Conversation < ApplicationRecord
  has_many :messages
  has_many :participants, dependent: :destroy

  validates :name, uniqueness: true

  scope :public_conversations, -> { where(is_private: false) }

  after_create_commit {broadcast_append_to "conversations"}
  after_create_commit { broadcast_if_public }

  def broadcast_if_public
    broadcast_append_to "conversations" unless self.is_private
  end

  def self.create_private_conversation(users, conversation_name)
    single_conversation = Conversation.create(name: conversation_name, is_private: true)
    users.each do |user|
      Participant.create(user_id: user.id, conversation_id: single_conversation.id)
    end
    single_conversation
  end
end
