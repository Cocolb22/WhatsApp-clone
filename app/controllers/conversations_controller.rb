class ConversationsController < ApplicationController

  def create
    @conversation = Conversation.create(name: params["conversation"]["name"])
  end

  def show
    @current_user = current_user
    @message = Message.new
    @single_conversation = Conversation.find(params[:id])
    @conversations = Conversation.public_conversations
    @users = User.all_except(@current_user)
    @conversation = Conversation.new
    @messages = @single_conversation.messages

    render "index"
  end

  def index
    @current_user = current_user
    @conversations = Conversation.public_conversations
    @users = User.all_except(@current_user)

  end
end
