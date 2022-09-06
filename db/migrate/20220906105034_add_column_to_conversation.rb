class AddColumnToConversation < ActiveRecord::Migration[6.1]
  def change
    add_column :conversations, :is_private, :boolean, :default => false
  end
end
