class PlacesController < ApplicationController

  before_action :set_place, only: [:edit, :update, :destroy]
  #before_action :logged_in_user, only: [:list]

  def home
  end

  def create
    @place = Place.create(place_params)
    if @place.save
      redirect_to list_url
    end
  end

  def index
    @places = Place.search(params[:search])
  end

  def edit
  end

  def update
    if @place.update(place_params)
      redirect_to list_url, notice: 'Estabelecimento atualizado'
    end
  end

  def list
    @place = Place.new
    @places = Place.all.order(:name)
  end

  def destroy
    @place.destroy
    redirect_to list_url, notice: 'Estabelecimento deletado'
  end

  private

  def profs
  end

  def place_params
    params.require(:place).permit(:name, :modality, :description, :openinghours, :address, :sort, :facebookpage, :search)
  end

  def set_place
    @place = Place.find(params[:id])
  end

  #def logged_in_user
  #  unless logged_in?
  #    flash[:danger]= "You can not access this page"
  #    redirect_to root_url
  #  end
  #end

end
