class MessagesController < ApplicationController
  def create
    @activity = Activity.find(params[:message][:activity_id])
    @message = Message.new(message_params)
    @message.user = current_user

    if @message.save
      respond_to do |format|
        format.html { redirect_to activity_path(@activity) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      p 'ERROR', @message
      respond_to do |format|
        format.html { redirect_to activities_path }
        format.js  # <-- idem
      end
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :activity_id)
  end
end
