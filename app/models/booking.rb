class Booking < ApplicationRecord
  belongs_to :vehicle
  belongs_to :user
  has_many :reviews, dependent: :delete_all
  validates :start_date, :end_date, presence: true
  validates :start_date, comparison: { less_than_or_equal_to: :end_date }
  # validates :place, presence: true

  # def compute_price
  #   duration = (self.end_date - self.start_date).to_i + 1
  #   self.vehicle.price * duration
  # end

  def compute_price(date)
    start_date = date.split(' to ').first.to_date
    end_date = date.split(' to ').last.to_date
    duration = (end_date - start_date).to_i + 1
    self.vehicle.price * duration
  end
end
