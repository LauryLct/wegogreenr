class ProfilesController < ApplicationController
  skip_before_action :check_profile!, only: [:new, :create]

  def new
    @user = current_user
    @profile = Profile.new
  end
  
  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user
    if @profile.save
      redirect_to root_path
      flash[:notice] = "Profil mis à jour"
    else
      render :new
      flash.now[:alert] = "Une erreur est survenue"
    end
  end

  def edit
    @user = current_user
    @profile = @user.profile
  end
  
  def update
    @profile.user = current_user
    if @profile.update(profile_params)
      redirect_to root_path
      flash[:notice] = "Profil mis à jour"
    else
      render :edit
      flash.now[:alert] = "Une erreur est survenue"
    end
  end
  
  private
  
  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :nickname, :gender, :age, :description, :photo)
  end
end
