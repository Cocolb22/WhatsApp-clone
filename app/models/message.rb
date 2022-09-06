class Message < ApplicationRecord
  after_create_commit { broadcast_append_to self.conversation }

  belongs_to :conversation
  belongs_to :user

  validates :content, presence: true

end
