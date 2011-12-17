class RemoveLatLngAddLocationId < ActiveRecord::Migration
  def change
    remove_column :shops, :lat
    remove_column :shops, :lng
    add_column :shops, :location_id, :integer
  end
end
