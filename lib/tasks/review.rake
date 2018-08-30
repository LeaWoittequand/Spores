namespace :review do
  desc "Send email reviews from bookings ended 3 days ago"
  task send_mails: :environment do
    bookings = Booking.where(end_date: Date.today - 3.days).includes(:user)

    puts "Enqueuing send mail of #{bookings.size} bookings..."

    bookings.each do |booking|
      UserMailer.review(booking.user, booking).deliver_later
    end
  end
end
