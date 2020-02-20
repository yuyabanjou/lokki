class CreateItinerarySpots < ActiveRecord::Migration[5.2]
  def change
    create_table :itinerary_spots do |t|
      t.integer :itinerary_id
      t.integer :spot_id
      t.date :date
      t.text :itinerary_spot_memo
      t.text :reference_url
      t.string :moving_genre
      t.text :moving_memo
      t.integer :fare
      t.datetime :arrival_plan_time
      t.datetime :start_plan_time

      t.timestamps
    end
  end
end
