class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
    @movie = Movie.find(params[:movie_id])
    @bookmark.movie = @movie
    @list = List.find(params[:list_id])
    @bookmark.list = @list
  end

  def show
  end

  def create
    @bookmark = Bookmark.new(strong_params)
    @bookmark.movie_id = params[:movie_id]
    @bookmark.list_id = params[:list_id]
    if @bookmark.save
      redirect_to list_path(id: @bookmark.list_id)
    else
      redirect_to list_path(id: @bookmark.list_id)
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path
  end

  private

  def strong_params
    params.require(:bookmark).permit(:comment)
  end
end
