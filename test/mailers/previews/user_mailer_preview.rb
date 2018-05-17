class UserMailerPreview < ActionMailer::Preview
  def newbooking
    user = User.first
    booking = Booking.first
    flat = Flat.first
    UserMailer.newbooking(user, booking, flat)
  end

  def confirm_booking
    user = User.first
    booking = Booking.first
    UserMailer.confirm_booking(user, booking)
  end

end
