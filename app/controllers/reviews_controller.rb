class ReviewsController < ApplicationController

def create
@activity = Activity.find(params[:activity_id])
@review = Review.new(review_params)
@review.activity = @activity
@review.user = current_user

  if @review.save
    redirect_to activity_path(@activity)
  else
    flash[:alert] = "Something went wrong."
    redirect_to activity_path(@activity)
  end
end

# def show
#   @review = @reviewable.reviews.user_reviews(current_user).first || Review.new
# end

private

  def review_params
    params.require(:review).permit(:rate)
  end
end
