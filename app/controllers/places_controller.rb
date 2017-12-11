class PlacesController < ApplicationController

  def new
  @place = Place.new
end

def create
  @place = Place.create(place_params)
  if @place.save
    flash[:info] = "Estabelecimento criado com sucesso"
    redirect_to root_url
  end
end

def index
  @places = Place.search(params[:search])
end

def show
  @place = Place.find(params[:id])
end
end

def profs
end

private

def place_params
params.require(:place).permit(:name, :modality, :description, :openinghours, :address, :sort, :facebookpage, :search)
end
