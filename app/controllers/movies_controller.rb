class MoviesController < ApplicationController
  before_action :set_genres, :set_years, :set_ratings, only: :index
  before_action :set_movie, only: :show

  def index
    @movies = Movie.all

    filter_params(params).each do |key, value|
      @movies = @movies.public_send(key, value) if value.present?
    end

    @movies = @movies.paginate page: params[:page], per_page: Settings.movies.page
  end

  def show
    reviews = @movie.reviews
    reviews.blank? ? 0 : @avg_rating = reviews.average(:rating)
    @reviews = reviews.sort_reviews
    @inter_review = Interactive.new
  end

  private

  def filter_params params
    params.permit :genre, :premiere, :rating
  end

  def set_movie
    @movie = Movie.find_by id: params[:id]
    redirect_to root_path unless @movie
  end

  def set_genres
    @genres = Genre.pluck :name, :id
  end

  def set_years
    @years = Movie.unscoped.order(:premiere).years
  end

  def set_ratings
    @ratings = Review.pluck(:rating).uniq.sort
  end
end
