class UsersController < ApplicationController
  before_action :authenticate_user!, :correct_user, only: :show

  def show
    @reviews = @user.reviews.paginate page: params[:page], per_page: Settings.user.reviews.page
    @watchlists = @user.watchlists.order created_at: :desc
  end

  private

  def correct_user
    @user = User.find_by id: params[:id]
    redirect_to root_path unless current_user == @user
  end
end
