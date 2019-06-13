class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :event, :show]
  before_action :set_activity, only: [:show, :edit, :update]

  def index
    @activities = Activity.where.not(latitude: nil, longitude: nil)

    @markers = @activities.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        image_url: helpers.asset_url("#{activity.category}.png"),
        activity: activity.category,
        infoWindow: render_to_string(partial: "infowindow", locals: { activity: activity })
      }
    end
  end

  def show
    @favorite = isfavorite?(@activity)
    @message = Message.new
    # @message.activity_id = @activity[:id]
    # @message.user_id = current_user[:id]
    session[:current_path] = activity_path(@activity)
    @messages = @activity.messages
    @review = Review.new
    @review.activity = @activity
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.user = current_user
    if @activity.save
      redirect_to activity_path(@activity)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @activity.update(activity_params)
    if @activity.save
      redirect_to activity_path(@activity)
    else
      render :edit
    end
  end

  def event
    @activities = Activity.order('starting_date ASC').all
  end

  private

  def isfavorite?(activity)
    !Favorite.find_by(user: current_user, activity: activity).nil?
  end

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:name, :photo, :description, :category, :street, :zipcode, :city, :starting_date, :ending_date)
  end
end
