class ChangeDataGenreToSpot < ActiveRecord::Migration[5.2]
  def change
  	change_column :spots, :genre, :integer
  	change_column :spots, :public_status, :boolean
  end
end
