class ItinerariesController < ApplicationController
	before_action :authenticate_traveller!, except: [:top, :index, :show]

	def new
		@itinerary = Itinerary.new
		@traveller = current_traveller
		@itinerary_spot = ItinerarySpot.new
	end

	def create
		@itinerary = Itinerary.new(itinerary_params)
		@itinerary.traveller_id = current_traveller.id
		@itinerary.save
		# binding.pry
		redirect_to edit_traveller_itinerary_path(id: @itinerary.id, traveller_id: current_traveller.id)
	end

	def edit
		@itinerary = Itinerary.find(params[:id])
		@traveller = @itinerary.traveller
		if @traveller.id != current_traveller.id
      redirect_to traveller_itinerary_path(id: @itinerary.id, traveller_id: @traveller.id)
    end
	end

	def update
		@itinerary = Itinerary.find(params[:id])
		@traveller = current_traveller
    @itinerary.update(itinerary_params)
    redirect_to edit_traveller_itinerary_path(id: @itinerary.id, traveller_id: current_traveller.id)
	end

	def destroy
		itinerary = Itinerary.find(params[:id])
		traveller = current_traveller
		itinerary.destroy
		redirect_to traveller_path(traveller.id)
		# binding.pry
	end

	def show
		@itinerary = Itinerary.find(params[:id])
		@itinerary_spots = @itinerary.itinerary_spots.all.order(arrival_plan_time: "ASC")
	end

	private
	def itinerary_params
		params.require(:itinerary).permit(:traveller_id, :title, :synopsis, :theme, :public_status)
	end

end
