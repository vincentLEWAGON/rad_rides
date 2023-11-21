class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.save!
      flash.notice = "Réservation faite"
      redirect_to @booking
    end

  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_start, :place, :price, :vehicle_id)
  end
end
