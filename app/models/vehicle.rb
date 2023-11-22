class Vehicle < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  
  validates :category, inclusion: { in: ["maritime", "terreste", "aerien"] }
  validates :name, :description, :category, :price, presence: true
end
