class CreateSpots < ActiveRecord::Migration[5.2]
  def change
    create_table :spots do |t|
      t.integer :traveller_id
      t.string :genre
      t.string :spot_name
      t.text :spot_text
      t.string :image_id
      t.integer :cost
      t.string :business_hours
      t.string :stay_time
      t.string :position
      t.string :access
      t.string :public_status

      t.timestamps
    end
  end
end
