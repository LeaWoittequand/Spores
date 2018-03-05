class UserMailerPreview < ActionMailer::Preview
  def newbooking
    user = User.first
    booking = Booking.first
    UserMailer.newbooking(user, booking)
  end
end
