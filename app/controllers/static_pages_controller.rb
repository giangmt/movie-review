class StaticPagesController < ApplicationController
  before_action :get_movies, only: :home

  def home
    @top_reviewed = Movie.top_reviewed
    @top_rated = Movie.top_rated
  end

  private

  def get_movies
    @movies = @search.result.paginate page: params[:page], per_page: Settings.movies.page
  end
end
