class FavoriteSpotsController < ApplicationController
  def create
  	# こう記述することで、「current_travellerに関連したFavoriteSpotクラスの新しいインスタンス」が作成可能。
    # つまり、favorite_spot.traveller_id = current_traveller.idが済んだ状態で生成されている。
    # buildはnewと同じ意味で、アソシエーションしながらインスタンスをnewする時に形式的に使われる。
    @spot = Spot.find(params[:spot_id])
    favorite_spot = current_traveller.favorite_spots.build(spot_id: params[:spot_id], favorite_spot_memo: "")
    favorite_spot.save
  end

  def update
    @favorite_spot = FavoriteSpot.find_by(spot_id: params[:spot_id], traveller_id: current_traveller.id)
    @favorite_spot.update(favorite_spot_params)
    redirect_to traveller_path(@favorite_spot.traveller_id)
  end

  def destroy
    @spot = Spot.find(params[:spot_id])
  	favorite_spot = FavoriteSpot.find_by(spot_id: params[:spot_id], traveller_id: current_traveller.id)
    favorite_spot.destroy
    if params[:para] == "mypage"
      redirect_to traveller_path(favorite_spot.traveller_id)
    end
  end

  private
  def favorite_spot_params
    params.require(:favorite_spot).permit(:traveller_id, :favorite_spot_memo)
  end
end
