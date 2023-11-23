class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.vehicle = Vehicle.find_by(id: params[:vehicle_id])
    @booking.start_date = params[:booking][:start_date].split(' to ').first.to_date
    @booking.end_date = params[:booking][:start_date].split(' to ').last.to_date
    @booking.price = @booking.compute_price(params[:booking][:start_date])
    if @booking.save!
      flash.notice = "Réservation faite"
      redirect_to dashboard_my_bookings_path
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :place)
  end
end
