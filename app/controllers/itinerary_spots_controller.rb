class ItinerarySpotsController < ApplicationController
	before_action :authenticate_traveller!

	def new
		@itinerary = Itinerary.find(params[:itinerary_id])
		@favorite_spots = current_traveller.my_favorite_spots
		@itinerary_spot = ItinerarySpot.new
	end

	def create
		@itinerary = Itinerary.find(params[:itinerary_id])
		@itinerary_spot = @itinerary.itinerary_spots.new(itinerary_spot_params)
		binding.pry
		# date = if文を書く
		@itinerary_spot.assign_attributes({ arrival_plan_time: Time.parse(itinerary_spot_params["date(1i)"] + itinerary_spot_params["date(2i)"] + itinerary_spot_params["date(3i)"] + itinerary_spot_params["arrival_plan_time(4i)"] + itinerary_spot_params["arrival_plan_time(5i)"]) })
		respond_to do |format|
			if @itinerary_spot.save!
				format.html { redirect_to @itinerary_spot }
				format.json { render :new, status: :created, location: @itinerary_spot }
				format.js { @status = "success"}
			else
				format.html { render :new }
				format.json { render json: @itinerary_spot.errors, status: :unprocessable_entity }
				format.js { @status = "fail" }
			end
		end
	end

	def destroy
		@itinerary = Itinerary.find(params[:itinerary_id])
		itinerary_spot = @itinerary.itinerary_spots.find(params[:id])
		itinerary_spot.destroy
		redirect_to edit_traveller_itinerary_path(id: @itinerary.id)
		# 非同期削除の途中
		# respond_to do |format|
		# 	if itinerary_spot.destroy
		# 		format.html { redirect_to @itinerary_spot }
		# 		format.json { render :new, status: :created, location: @itinerary_spot }
		# 		format.js { @status = "success"}
		# 	else

		# 	end
	end

	def edit
		@itinerary = Itinerary.find(params[:itinerary_id])
		@favorite_spots = current_traveller.my_favorite_spots
		@itinerary_spot = @itinerary.itinerary_spots.find(params[:id])
	end

	def update
		@itinerary = Itinerary.find(params[:itinerary_id])
		@itinerary_spot = @itinerary.itinerary_spots.find(params[:id])
		respond_to do |format|
			if @itinerary_spot.update(itinerary_spot_params)
				format.html { redirect_to @itinerary_spot }
				format.json { render :update, status: :created, location: @itinerary_spot }
				format.js { @status = "success"}
			else
				format.html { render :update }
				format.json { render json: @itinerary_spot.errors, status: :unprocessable_entity }
				format.js { @status = "fail" }
			end
		end
	end

	private
	def itinerary_spot_params
		params.require(:itinerary_spot).permit(:spot_id, :date, :itinerary_spot_memo, :reference_url, :moving_genre, :moving_memo, :fare, :arrival_plan_time, :start_plan_time)
	end

end
