class HeartsController < ApplicationController

  respond_to :js

def heart
  @user = current_user
  @activity = Activity.find(params[:activity_id])
  @user.heart!(@activity)
end

def unheart
  @user = current_user
  @heart = @user.hearts.find_by_activity_id(params[:activity_id])
  @activity = Activity.find(params[:activity_id])
  @heart.destroy!
end

end
