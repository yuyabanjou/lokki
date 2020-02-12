class TravellersController < ApplicationController
  def show
  	@traveller = Traveller.find(params[:id])
  	@spots = @traveller.spots
  	# binding.pry
  	@my_favorite_spots = @traveller.my_favorite_spots # 追加
  end
end
