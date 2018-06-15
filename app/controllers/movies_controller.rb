class MoviesController < ApplicationController
  before_action :set_genres, :set_years, only: :index

  def index
    @movies = Movie.all

    filter_params(params).each do |key, value|
      @movies = @movies.public_send(key, value) if value.present?
    end

    @movies = @movies.paginate page: params[:page], per_page: Settings.movies.page
  end

  def show
    @movie = Movie.find_by id: params[:id]
    redirect_to root_path unless @movie
    @reviews = @movie.reviews
  end

  private

  def filter_params params
    params.permit :genre, :premiere
  end

  def set_genres
    @genres = Genre.pluck :name, :id
  end

  def set_years
    @years = Movie.years
  end
end
