class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.vehicle = Vehicle.find_by(id: params[:vehicle_id])
    @booking.price = @booking.compute_price
    if @booking.save!
      flash.notice = "Réservation faite"
      redirect_to dashboard_my_bookings_path
    else
      render :new
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to dashboard_my_bookings_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_my_bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :place)
  end
end
