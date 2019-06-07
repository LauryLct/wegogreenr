class ActivityChannel < ApplicationCable::Channel
  def subscribed
    stream_from "activity_#{params[:activity_id]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
