class ChangeColumnToTraveller < ActiveRecord::Migration[5.2]
  def change
  	change_column :travellers, :entry_status, :boolean, :default =>true
  end
end
