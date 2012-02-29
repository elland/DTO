class ComicsController < ApplicationController
  def index
    @comic = session[:comic_id] = '0000001'
    redirect_to show_comic_path(@comic)
  end


  def show
    @comic = session[:comic_id] = params[:id]
    render :index
  end

  def next
    id = ''
    (7 - (session[:comic_id].to_i + 1).to_s.size).times{id << '0'}
    @comic = session[:comic_id] = id + (session[:comic_id].to_i + 1 ).to_s
    redirect_to show_comic_path(@comic)
  end

  def prev
    id = ''
    (7 - (session[:comic_id].to_i - 1).to_s.size).times{id << '0'}
    @comic = session[:comic_id] = id + (session[:comic_id].to_i - 1 ).to_s
    redirect_to show_comic_path(@comic)
  end
end
