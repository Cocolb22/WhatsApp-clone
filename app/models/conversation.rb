class Conversation < ApplicationRecord
  belongs_to :user
  has_many :message, dependent: :destroy

  validates :name, presence: true
end
