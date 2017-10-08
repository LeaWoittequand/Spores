class Review < ApplicationRecord
  belongs_to :user
  belongs_to :flat

  validates :description, presence: true


end
