class Booking < ApplicationRecord
  belongs_to :vehicle
  belongs_to :user

  validates :start_date, :end_date, presence: true
  validates :start_date, comparison: { less_than_or_equal_to: :end_date }
  # validates :place, presence: true

  def compute_price
    duration = (self.end_date - self.start_date).to_i + 1
    self.vehicle.price * duration
  end
end
