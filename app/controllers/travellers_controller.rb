class TravellersController < ApplicationController

  def show
  	@traveller = Traveller.find(params[:id])
  	@itineraries = @traveller.itineraries
  	@spots = @traveller.spots
  	@spots_count = @spots.all.count
  	# binding.pry
  	@my_favorite_spots = @traveller.my_favorite_spots # 追加
  end

  def edit
  	@traveller = current_traveller
  end

  def update
  	@traveller = current_traveller
  	if @traveller.update(traveller_params)
  		redirect_to traveller_path(id: @traveller.id), notice: "会員情報を編集しました"
  	else
  		render :edit
  	end
  end

  def withdraw
  end

	private
  def traveller_params
  	params.require(:traveller).permit(:traveller_id, :email, :name, :trip_count)
  end

end
