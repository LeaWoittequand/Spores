class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index], raise: false

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def edit
  end

  def index
    @flats = Flat.where.not(lat: nil, lng: nil)
  end

  def show
    @flat = Flat.find(params[:id])
    #@flat_coordinates = { lat: @flat.lat, lng: @flat.lng }
  end

  def new
    @flat = Flat.new
  end

  def update
  end

  def destroy
    @flat.destroy
    redirect_to flats_path
  end

  private


  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:address, :city, :description, :name, :lat, :lng)
  end
end
