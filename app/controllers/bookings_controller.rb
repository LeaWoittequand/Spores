class BookingsController < ApplicationController
   before_action :set_booking, only:[:edit, :show]

  def create
     if booking_params['begin_date'] > booking_params['end_date'] || booking_params['end_date'].blank? ||booking_params['end_date'] < Time.now
      flash[:alert] = "Dates invalides"
      return redirect_to flat_path(Flat.find(booking_params[:flat_id]))
    end

    user = current_user
    @booking = user.bookings.new(booking_params)
    if @booking.save
      redirect_to booking_path
    else
      render :new
    end
  end

  def index
    @bookings = Booking.all.where(user: current_user)
    @user = current_user
  end

  def new
    @booking = Booking.new
  end



  private

  def booking_params
    params.require(:booking).permit(:begin_date, :end_date, :member_of_people)
  end

end
