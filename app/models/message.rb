class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :user

  validates :content, presence: true
  before_create :confirm_participant

  after_create_commit { broadcast_append_to self.conversation }

  def confirm_participant
    if self.conversation.is_private
      is_participant = Participant.where(user_id: self.user.id, conversation_id: self.conversation.id).first
      throw :abort unless is_participant
    end
  end
end
