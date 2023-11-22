class VehiclesController < ApplicationController

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.user = current_user
    if @vehicle.save
      flash.notice = "Annonce créee"
      redirect_to dashboard_my_vehicles_path
    end
  end

  def index
    if params["aerien"] == "1"
      @vehicles = Vehicle.where(category: "aerien")
    else
      @vehicles = Vehicle.all

    end
  end

  def show
    @vehicle = Vehicle.find(params[:id])
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:name, :description, :category, :price, :id, :photo)
  end
end
