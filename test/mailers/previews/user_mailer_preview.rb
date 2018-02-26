class UserMailerPreview < ActionMailer::Preview

  def welcome
    user = User.first
    UserMailer.welcome(user)
  end

  def new_booking
    user = User.first
    booking = Booking.first
    UserMailer.new_booking(user, booking)
  end

end
