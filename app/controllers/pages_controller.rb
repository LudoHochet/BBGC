class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  skip_after_action :verify_authorized

  def home
    # @articles = Article.all.order(:created_at)
    @articles = policy_scope(Article).order(created_at: :desc)
    @article = Article.new
    if params[:query].present?
      @articles = Article.search_global(params[:query])
    end
  end

  def club
    @locations = Location.geocoded # returns locations with coordinates

    @markers = @locations.map do |location|
      {
        lat: location.latitude,
        lng: location.longitude
      }
    end
  end
end

