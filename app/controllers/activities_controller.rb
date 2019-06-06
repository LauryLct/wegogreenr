class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :event, :show]
  before_action :set_activity, only: :show

  def index
    @activities = Activity.where.not(latitude: nil, longitude: nil)

    @markers = @activities.map do |activity|
      {
        lat: activity.latitude,
        lng: activity.longitude,
        image_url: helpers.asset_url('Logo3-simple.png')
      }
    end
  end

  def show
    @message = Message.new
    @message.activity_id = @activity[:id]
    @message.user_id = current_user[:id]

    @messages = @activity.messages
  end

  def new
  end

  def create
    @activity = Activity.new(activity_params)
    if @activity.save
      redirect_to activities_path(@activity)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def event
    @activities = Activity.all
  end

  private

    def set_activity
      @activity = Activity.find(params[:id])
    end

    def activity_params
      params.require(:activity).permit(:name, :photo, :price, :description, :category, :street, :zipcode, :city, :starting_date, :ending_date,)
    end

  end

