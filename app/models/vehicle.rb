class Vehicle < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :category, inclusion: { in: ["maritime", "terrestre", "aerien"] }
  validates :name, :description, :category, :price, presence: true
end
