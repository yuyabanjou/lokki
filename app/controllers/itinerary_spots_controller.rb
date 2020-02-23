class ItinerarySpotsController < ApplicationController
	before_action :authenticate_traveller!

	def new
		@itinerary = Itinerary.find(params[:itinerary_id])
		@favorite_spots = current_traveller.my_favorite_spots
		@spots = current_traveller.spots
		@itinerary_spot = ItinerarySpot.new
	end

	def create
		@itinerary = Itinerary.find(params[:itinerary_id])
		@itinerary_spot = @itinerary.itinerary_spots.new(itinerary_spot_params)
		# assign_attributesで@itinerary_spotの中身を置き換え、Time.parseで文字列をtime型に変換、.rjust(2, "0")で２桁０埋め
		# @itinerary_spot.assign_attributes({ arrival_plan_time: DateTime.parse(itinerary_spot_params["date(1i)"] + itinerary_spot_params["date(2i)"].rjust(2, "0") + itinerary_spot_params["date(3i)"].rjust(2, "0") + itinerary_spot_params["arrival_plan_time(4i)"] + itinerary_spot_params["arrival_plan_time(5i)"]), start_plan_time: DateTime.parse(itinerary_spot_params["date(1i)"] + itinerary_spot_params["date(2i)"].rjust(2, "0") + itinerary_spot_params["date(3i)"].rjust(2, "0") + itinerary_spot_params["start_plan_time(4i)"] + itinerary_spot_params["start_plan_time(5i)"]) })
		# binding.pry
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
		@spots = current_traveller.spots
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

	# favorite_spot_memoを表示させるためのaction、json形式でデータだけをresultとして返している
	def getmemo
		render :json => {
			'result' => FavoriteSpot.where(spot_id: params[:spot_id])[0].favorite_spot_memo
		}
	end

	private
	def itinerary_spot_params
		params.require(:itinerary_spot).permit(:spot_id, :date, :itinerary_spot_memo, :reference_url, :moving_genre, :moving_memo, :fare, :arrival_plan_time, :start_plan_time)
	end

end
