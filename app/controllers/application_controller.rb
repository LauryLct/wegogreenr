class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  before_action :check_profile!, if: :user_signed_in?

  def after_sign_in_path_for(resource)
    session[:current_path] || activities_path
  end

  private

  def check_profile!
    unless current_user.profile.present?
      redirect_to new_profile_path
      flash[:alert] = "Veuillez renseigner un pseudo pour continuer"
    end 
  end
end
