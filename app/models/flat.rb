class Flat < ApplicationRecord
  has_many :reviews
  has_many :bookings

  validates :description, presence: true

end
