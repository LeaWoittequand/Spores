class User < ApplicationRecord
  has_many :bookings
  has_many :reviews

  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :email, uniqueness: true, presence: true
  validates :description, presence: true


end
