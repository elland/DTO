class FavoritesController < ApplicationController
  before_filter :is_authenticated?

  def index
    @favorites = current_user.favorites
  end

  def add
    current_user.toggle_fav(params[:id])
    respond_to do |f|
      f.json {render json: "#{current_user.is_fav?(params[:id])}", status: 200}
    end
  end

  private
  def is_authenticated?
    redirect_to new_user_session_path unless current_user
  end
end
