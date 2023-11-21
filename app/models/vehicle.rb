class Vehicle < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :category, inclusion: { in: ["maritime", "terreste", "aerien"] }
end
