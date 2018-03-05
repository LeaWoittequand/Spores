class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.newbooking.subject
  #
  def newbooking(user, booking)
    @user = user
    @booking = booking

    mail(to: "allan.ballester@decathlon.com", subject: 'Welcome to Le Wagon')
  end
end

