class MoviesController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end

  def index
    @movies = Movie.all
  end

  def show
    @bookmark = Bookmark.new
  end
end
