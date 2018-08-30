class Booking < ApplicationRecord
  after_create :send_newbooking_email
  after_create :send_confirm_booking_email

  belongs_to :user
  belongs_to :flat

  validates :begin_date, presence: true
  validates :end_date, presence: true
  validates :member_of_people, presence: true

  validate :end_date_after_start_date?
  validate :start_date_after_today?

  def end_date_after_start_date?
    if end_date < begin_date
      errors.add :end_date, "must be after start date"
    end
  end

  def start_date_after_today?
    if Date.today > begin_date
      errors.add :begin_date, "must be after today"
    end
  end

  private

  def send_newbooking_email
    UserMailer.newbooking(user, self).deliver_now
  end

  def send_confirm_booking_email
    UserMailer.confirm_booking(user, self).deliver_now
  end

  def send_review_email
    UserMailer.review(user, self).deliver_later(wait_until: 10.days.from_now)
  end
end
