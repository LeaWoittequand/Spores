class FlatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

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
    @flats = Flat.all
    @flats = Flat.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@flats) do |flat, marker|
      marker.lat flat.latitude
      marker.lng flat.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  def show
    @flat = Flat.find(params[:id])
    @flat_coordinates = { lat: @flat.latitude, lng: @flat.longitude }
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
    @profile = Profile.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:address, :city, :description, :name, :lat, :lng)
  end
end
