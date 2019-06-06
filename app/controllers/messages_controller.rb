class MessagesController < ApplicationController

  def create
    @activity = Activity.find(params[:activity_id])
    @message = Message.new(message_params)
    @message.user = current_user
    @message.activity_id = @activity.id

    if @message.save
      redirect_to activity_path(@activity)
    else
      redirect_to activities_path
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
