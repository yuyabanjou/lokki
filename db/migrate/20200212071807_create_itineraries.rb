class CreateItineraries < ActiveRecord::Migration[5.2]
  def change
    create_table :itineraries do |t|
      t.integer :traveler_id
      t.string :title
      t.text :synopsis
      t.string :theme
      t.boolean :public_status

      t.timestamps
    end
  end
end
