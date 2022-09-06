class ConversationsController < ApplicationController

  def show
    @conversation = Conversation.find(params[:id])
    @message = Message.new
  end

  def index
    @current_user = current_user
    @conversations = Conversation.public_conversations
    @users = User.all_except(@current_user)

  end
end
