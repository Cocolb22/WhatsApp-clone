class AddMessageRefToConversations < ActiveRecord::Migration[6.1]
  def change
    add_reference :conversations, :message, null: false, foreign_key: true
  end
end
