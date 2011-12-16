class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.string :address
      t.references :city
      t.string :lat
      t.string :lng
      t.string :url

      t.timestamps
    end
    add_index :shops, :city_id
  end
end
