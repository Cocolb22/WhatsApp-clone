class MessagesController < ApplicationController

  def create
    @current_user = current_user
    @message = @current_user.messages.create(content: msg_params[:content], conversation_id: params[:conversation_id])
  end

  private

  def msg_params
    params.require(:message).permit(:content)
  end
end
