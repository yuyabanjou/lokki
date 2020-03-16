class SpotsController < ApplicationController

  before_action :authenticate_traveller!, except: [:top, :index, :show, :about]

  def top
    @spots = Spot.公開中.page(params[:page]).reverse_order
  end

  def index
    @spots = Spot.公開中.page(params[:page]).reverse_order
    @genres = Spot.genres
  end

  def show
    @spot = Spot.find(params[:id])
  end

  def about
  end

  def new
    @spot = Spot.new
    @traveller = current_traveller
  end

  def create
    @spot = Spot.new(spot_params)
    @spot.traveller_id = current_traveller.id
    @spot.save
    redirect_to spot_path(id: @spot.id)
  end

  def edit
    @spot = Spot.find(params[:id])
    @traveller = @spot.traveller
    if @traveller.id != current_traveller.id
      redirect_to spot_path(@spot.id)
    end
  end

  def update
    @spot = Spot.find(params[:id])
    @spot.update(spot_params)
    redirect_to spot_path(@spot.id)
  end

  def destroy
    spot = Spot.find(params[:id])
    spot.destroy
    redirect_to spots_path
  end

  private
  def spot_params
    params.require(:spot).permit(:traveller_id, :image, :genre, :spot_name, :spot_text, :cost, :bussiness_hours, :stay_time, :position, :access, :public_status)
  end

end
