class VehiclesController < ApplicationController

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.user = current_user
    if @vehicle.save!
      flash.notice = "Annonce créee"
      redirect_to dashboard_my_vehicles_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    if params["aerien"] == "1"
      @vehicles = Vehicle.where(category: "aerien")
    else
      @vehicles = Vehicle.all

    end
  end

  def edit
    @vehicle = Vehicle.find(params[:id])
  end

  def update
    @vehicle = Vehicle.find(params[:id])
    @vehicle.update(vehicle_params)
    redirect_to dashboard_my_vehicles_path
  end

  def show
    @vehicle          = Vehicle.find(params[:id])
    @bookings       = @vehicle.bookings
    @bookings_dates = @bookings.map do |booking|
      {
        from: booking.start_date,
        to:   booking.end_date
      }
    end
  end
 

  private

  def vehicle_params
    params.require(:vehicle).permit(:name, :description, :category, :price, :id, :photo)
  end


end
