class PlacesController < ApplicationController
  def index
    @places = Place.all
    @places = Place.search(params[:term], params[:page])
  end
end
