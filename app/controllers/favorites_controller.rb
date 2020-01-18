class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.favorite(micropost)
    #user = current_user
    #@micropost = current_user.microposts.build(micropost_params)
    #favorite = current_user.favorites.build(micropost_id: params[:micropost_id])
    #favorite.save
    flash[:success] = '投稿をお気に入りしました。'
    redirect_back(fallback_location: root_path)
  end

  def destroy
    #user = current_user
    #user = User.find(params[:micropost_id])
    micropost = Micropost.find(params[:micropost_id])
    current_user.unfavorite(micropost)
    #favorite = Favorite.find_by(micropost_id: params[:micropost_id], user_id: current_user.id)
    #favorite.destroy
    flash[:success] = '投稿のお気に入りを解除しました。'
    redirect_back(fallback_location: root_path)
  end
end
