class MoviesController < ApplicationController
  def index
    @movies = Movie.paginate page: params[:page], per_page: Settings.movies.page
  end
end
