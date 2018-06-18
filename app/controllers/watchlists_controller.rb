class WatchlistsController < ApplicationController
  before_action :authenticate_user!

  def create
    @add_watchlist = current_user.watchlists.build watchlist_params
    if @add_watchlist.save
      flash[:success] = t ".added"
      redirect_to @add_watchlist.movie
    end
  end

  def destroy
    @watchlist = Watchlist.find params[:id]
    @watchlist.destroy
    flash[:success] = t ".remove"
    redirect_to @watchlist.user
  end

  private

  def watchlist_params
    params.require(:watchlist).permit :movie_id
  end
end
