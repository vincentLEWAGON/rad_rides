class VehiclesController < ApplicationController

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.user = current_user
    @vehicle.longitude = rand(4.82..4.87)
    @vehicle.latitude = rand(45.73..45.78)
    if @vehicle.save!
      flash.notice = "Annonce créee"
      redirect_to dashboard_my_vehicles_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @vehicles = Vehicle.all
    if params[:filter].present?
      if params["filter"]["aerien"] == "1"
        @vehicles = @vehicles.where(category: "aerien")
      end
      if params["filter"]["maritime"] == "1"
        @vehicles = @vehicles.where(category: "maritime")
      end
      if params["filter"]["terrestre"] == "1"
        @vehicles = @vehicles.where(category: "terrestre")
      end
    end

    @markers = @vehicles.geocoded.map do |vehicle|
      {
        lat: vehicle.latitude,
        lng: vehicle.longitude,
        address: vehicle.address,
        info_window_html: render_to_string(partial: "info_window", locals: {vehicle: vehicle}),
        marker_html: render_to_string(partial: "marker", locals: {vehicle: vehicle})
      }
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
    @vehicle = Vehicle.find(params[:id])
    @bookings = @vehicle.bookings
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
