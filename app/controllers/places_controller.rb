class PlacesController < ApplicationController

  def create
    @place = Place.create(place_params)
    if @place.save
      redirect_to list_url
    end
  end

  def index
    @places = Place.search(params[:search])
  end

  def show
    @place = Place.find(params[:id])
  end

  def list
    @place = Place.new
    @places = Place.all
  end
end

def profs
end

private

def place_params
  params.require(:place).permit(:name, :modality, :description, :openinghours, :address, :sort, :facebookpage, :search)
end
