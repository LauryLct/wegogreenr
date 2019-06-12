class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  before_action :check_profile!, if: :user_signed_in?

  add_flash_types :danger, :info, :warning, :success
  
  def after_sign_in_path_for(resource)
    session[:current_path] || activities_path
  end

  def default_url_options
    { host: ENV["DOMAIN=www.wegogreenr.com"] || "localhost:3000" }
  end

  private

  def check_profile!
    unless current_user.profile.present?
      redirect_to new_profile_path
      # flash[:alert] = "Veuillez renseigner un pseudo pour continuer"
    end 
  end

end
