class FavoritesController < ApplicationController
def create
  @activity = Activity.find(params[:id])
  @favorite = Favorite.new
  @favorite.activity = @activity
  @favorite.user = current_user
  @favorite.save
  respond_to do |format|
    format.html { redirect_to activity_path(@activity)}
    format.js
  end
end

def destroy
  @activity = Activity.find(params[:id])
  all_favorites = @activity.favorites.where(user: current_user)
  all_favorites.each do |fav|
    fav.destroy
  end
  respond_to do |format|
    format.html { redirect_to activity_path(@activity)}
    format.js
  end
end

private

  def favorite_params
    params.require(:favorite).permit(:heart)
  end
end
