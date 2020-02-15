class CreateFavoriteSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_spots do |t|
      t.integer :traveller_id
      t.integer :spot_id
      t.text :favorite_spot_memo

      t.timestamps
    end
  end
end
