class ItinerarySpotsController < ApplicationController
	before_action :authenticate_traveller!

	def new
		@itinerary = Itinerary.find(params[:itinerary_id])
		@favorite_spots = current_traveller.my_favorite_spots
		@itinerary_spot = ItinerarySpot.new
	end

	def create
		@itinerary = Itinerary.find(params[:itinerary_id])
		@itinerary_spot = ItinerarySpot.new(itinerary_spot_params)

		respond_to do |format|
			if @itinerary_spot.save
				format.html { redirect_to @itinerary_spot }
				format.json { render :show, status: :created, location: @itinerary_spot }
				format.js { @status = "success"}
			else
        format.html { render :new }
        format.json { render json: @itinerary_spot.errors, status: :unprocessable_entity }
        format.js { @status = "fail" }
      end
    end
	end

	private
	def itinerary_spot_params
		params.require(:itinerary_spot).permit(:itinerary_id, :spot_id, :date, :itinerary_spot_memo, :reference_url, :moving_genre, :moving_memo, :fare, :arrival_plan_time, :start_plan_time)
	end

end
