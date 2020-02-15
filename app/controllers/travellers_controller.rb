class TravellersController < ApplicationController
  def show
  	@traveller = Traveller.find(params[:id])
  	@itineraries = @traveller.itineraries
  	@spots = @traveller.spots
  	# binding.pry
  	@my_favorite_spots = @traveller.my_favorite_spots # 追加
  end
end
