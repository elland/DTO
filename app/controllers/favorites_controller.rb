class FavoritesController < ApplicationController
  before_filter :is_authenticated?

  def index
    @favorites = current_user.favorites
  end

  private
  def is_authenticated?
    redirect_to new_user_session_path unless current_user
  end
end
