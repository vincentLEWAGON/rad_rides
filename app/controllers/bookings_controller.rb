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

  def edit
    @booking = Booking.find(params[:id])
    @bookings_dates = [{
        from: @booking.start_date,
        to:   @booking.end_date
      }]
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.start_date = params[:booking][:start_date].split(' to ').first.to_date
    @booking.end_date = params[:booking][:start_date].split(' to ').last.to_date
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
