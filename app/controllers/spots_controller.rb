class SpotsController < ApplicationController

  def top
  end

  def index
    @spots = Spot.all
  end

  def show
    @spot = Spot.find(params[:id])
  end

  def new
    @spot = Spot.new
    @traveller = current_traveller
  end

  def create
    @spot = Spot.new(spot_params)
    @spot.traveller_id = current_traveller.id
    @spot.save
    redirect_to traveller_spot_path(id: @spot.id)
  end

  def edit
    @spot = Spot.find(params[:id])
    @traveller = current_traveller
  end

  def update
    @spot = Spot.find(params[:id])
    @spot.update(spot_params)
    redirect_to traveller_spot_path(id: @spot.id)
  end

  def destroy
  end

  private
  def spot_params
    params.require(:spot).permit(:traveller_id, :image, :genre, :spot_name, :spot_text, :cost, :bussiness_hours, :stay_time, :position, :access, :public_status)
  end

end
