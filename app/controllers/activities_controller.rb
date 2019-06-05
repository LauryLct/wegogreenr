class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :event]

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def event
    @activities = Activity.all
  end
end
