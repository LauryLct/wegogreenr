class UsersController < ApplicationController
  def show
    @user = current_user
    activities = Activity.all
  end
end
