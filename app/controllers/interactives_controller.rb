class InteractivesController < ApplicationController
  before_action :authenticate_user!, only: :create

  def create
    @inter_review = current_user.interactives.build inter_review_params
    if @inter_review.save
      flash[:success] = t ".success"
      redirect_to @inter_review.review.movie
    end
  end

  private

  def inter_review_params
    params.require(:interactive).permit :review_id
  end
end
