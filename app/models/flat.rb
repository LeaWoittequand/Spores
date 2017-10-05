class Flat < ApplicationRecord
  geocoded_by :address, :latitude  => :lat, :longitude => :lng
  after_validation :geocode, if: :address_changed?
  belongs_to :users
  has_many :reviews
  has_many :bookings

end
