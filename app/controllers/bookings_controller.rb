class BookingsController < ApplicationController
   before_action :set_booking, only:[:edit, :show]

  def create
    @flat = Flat.find(params[:booking][:flat_id])
    @booking = Booking.new(booking_params)
    # @booking.flat = Flat.find(params[:flat_id])
    # @booking.user = current_user
    # if @booking.save
    #   redirect_to flat_path(@flat)
    # else
    #   render :new
    # end
    # @booking.flat = @flat
    # @booking.user = current_user
    # if @booking.save
    #   redirect_to flat_path(@flat)
    # else
    #   render :new
    # end
    @booking.user = current_user
    @booking.flat = @flat
    if @booking.save
      redirect_to flat_path(@flat), notice: "Booking successfully sent !!! One member of our team will come back to you within 24h to finalize your check in."
    else
     render :new
    end
  end


  def index
    @bookings = Booking.all.where(user: current_user)
    @user = current_user
  end

  def new
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new
  end

  private

  def booking_params
    params.require(:booking).permit(:begin_date, :end_date, :member_of_people, :user_id, :flat_id)
  end

  def set_booking
    @flat = Flat.find(params[:flat_id])
  end


end
