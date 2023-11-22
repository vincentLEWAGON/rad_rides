class DashboardsController < ApplicationController
  def index
    @vehicles = Vehicle.where(user_id: current_user.id)
  end

  def my_bookings
    @my_bookings = Booking.where(user: current_user)
  end

  def my_vehicles
    @my_vehicles = Vehicle.all
  end

  def my_reviews
    @my_reviews = Review.all
  end
end
