class Booking < ApplicationRecord
  belongs_to :vehicle
  belongs_to :user

  validates :start_date, :end_date, presence: true
  validates :start_date, comparison: { less_than_or_equal_to: :end_date }
  validates :price, presence: true
  validates :place, presence: true
end
