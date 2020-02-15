class ChangeDataMovingGenreToItinerarySpot < ActiveRecord::Migration[5.2]
  def change
  	change_column :itinerary_spots, :moving_genre, :integer
  end
end
