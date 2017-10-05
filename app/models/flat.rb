class Flat < ApplicationRecord
  geocoded_by :full_address, :latitude  => :lat, :longitude => :lng
  after_validation :geocode, if: :address_changed?
  belongs_to :users
  has_many :reviews
  has_many :bookings

  def full_address
    "#{address}, #{postcode}, #{city}"
  end
end
