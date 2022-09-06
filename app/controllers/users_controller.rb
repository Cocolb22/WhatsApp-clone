class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @current_user = current_user
    @conversations = Conversation.public_conversations
    @users = User.all_except(@current_user)
    @conversation = Conversation.new
    @message = Message.new
    @conversation_name = get_name(@user, @current_user)
    @single_conversation = Conversation.where(name: @conversation_name).first || Conversation.create_private_conversation([@user, @current_user], @conversation_name)
    @messages = @single_conversation.messages

    render "conversations/index"
  end

  private
  def get_name(user1, user2)
    users = [user1, user2].sort
    "private_#{users[0].id}_#{users[1].id}"
  end
end
