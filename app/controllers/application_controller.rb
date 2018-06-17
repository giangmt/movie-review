class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :search

  private
  
  def search
    @search = Movie.ransack params[:q]
  end
end
