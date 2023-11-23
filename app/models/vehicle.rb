class Vehicle < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  has_one_attached :photo

  validates :category, inclusion: { in: ["maritime", "terrestre", "aerien"] }
  validates :name, :description, :category, :price, presence: true
end

def average_of_reviews
  reviews = reviews.count
  @average = (sum(review.rating))/reviews
end
