class ReviewsController < ApplicationController

def create
@activity = Activity.find(params[:activity_id])
@review = Review.new(review_params)
@review.activity = @activity

  if @review.save
    redirect_to activity_path(@activity)
  else
    flash[:alert] = "Something went wrong."
    redirect_to activity_path(@activity)
  end
end

private

  def review_params
    params.require(:review).permit(:rate)
  end
end
