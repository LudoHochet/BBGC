class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  skip_after_action :verify_authorized

  def home
    @articles = policy_scope(Article).order(created_at: :desc)
    @article = Article.new
    if params[:query].present?
      @articles = Article.search_global(params[:query])
    end
  end

  def club
    @locations = Location.geocoded # returns locations with coordinates
    # get the coordonates for the location "Chez Isabelle"
    @isabelle = Location.find_by name:"Chez Isabelle"
    @isa_markers = [{lat: @isabelle.latitude, lng: @isabelle.longitude}]
    # get the coordonates for the location "Avec"
    @avec = Location.find_by name:"Avec"
    @avec_markers = [{lat: @avec.latitude, lng: @avec.longitude}]

    @markers = @locations.map do |location|
      {
        lat: location.latitude,
        lng: location.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { location: location })
      }
    end
  end

  def contact
    @contact = Contact.new
  end

end

