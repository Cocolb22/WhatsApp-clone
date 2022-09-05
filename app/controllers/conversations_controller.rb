class ConversationsController < ApplicationController

  def show
    @conversation = Conversation.find(params[:id])
    @message = Message.new
  end

  def index
    @conversations = Conversation.all
  end
end
