class User < ApplicationRecord
  has_many :bookings
  has_many :vehicles
  has_many :reviews
end
