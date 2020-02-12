class ChangeDataGenreToSpot < ActiveRecord::Migration[5.2]
  def change
  	change_column :spots, :genre, :integer
  end
end
