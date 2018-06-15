class ReviewsController < ApplicationController
  before_action :authenticate_user!, :set_movie, :set_reviews, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    @review = current_user.reviews.build review_params
    if @review.save
      flash[:success] = t ".created"
      redirect_to @movie
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit :title, :content, :movie_id, :rating
  end

  def set_reviews
    @reviews = Review.pluck :rating
  end

  def set_movie
    @movie = Movie.find params[:movie_id]
  end
end
