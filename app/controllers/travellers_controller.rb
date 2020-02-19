class TravellersController < ApplicationController
  def show
  	@traveller = Traveller.find(params[:id])
  	@itineraries = @traveller.itineraries
  	@spots = @traveller.spots
  	@spots_count = @spots.all.count
  	# binding.pry
  	@my_favorite_spots = @traveller.my_favorite_spots # 追加
  end
end
