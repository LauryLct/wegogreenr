class ReviewsController < ApplicationController

def create
@activity = Activity.find(params[:activity_id])
@review = Review.new(review_params)
@review.activity_id = @activity.activity_id

  if @review.save
    redirect_to activity_path(@activity)
  else
    redirect_to activities_path
  end
end

private

  def review_params
    params.require(:review).permit(:rate)
  end
end 