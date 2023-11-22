class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.price = (params[:end_date] - params[:start_date]).to_i * Vehicle.find(params[:vehicle_id]).price
    if @booking.save!
      flash.notice = "Réservation faite"
      redirect_to @root
    end

  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_start, :place, :price, :vehicle_id)
  end
end
