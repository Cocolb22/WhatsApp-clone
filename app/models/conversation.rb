class Conversation < ApplicationRecord
  has_many :messages
  validates :name, uniqueness: true
  scope :public_conversations, -> { where(is_private: false) }

  has_many :participants, dependent: :destroy
  after_create_commit { broadcast_if_public }

  def broadcast_if_public
    broadcast_append_to "conversations" unless self.is_private
  end

  def self.create_private_room(users, conversation_name)
    single_room = Conversation.create(name: conversation_name, is_private: true)
    users.each do |user|
      Participant.create(user_id: user.id, room_id: single_room.id )
    end
    single_room
  end
end
