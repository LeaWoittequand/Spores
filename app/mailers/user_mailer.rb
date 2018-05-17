class UserMailer < ApplicationMailer

  def newbooking(user, booking)
    @user = user
    @booking = booking
    @flat = booking.flat

    mail(to: "allan.ballester@decathlon.com", subject: "New booking from #{user.first_name} for #{@flat.name}!")

  end

  def confirm_booking(user, booking)
    @user = user
    @booking = booking

    mail(to: @user.email, subject: " #{user.first_name}, Welcome to Spores Homes !")
  end

   def review(user, booking)
    @user = user
    @booking = booking

    mail(to: @user.email, subject: " #{user.first_name}, how was your experience ?!")
  end

end

