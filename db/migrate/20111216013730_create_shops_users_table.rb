class CreateShopsUsersTable < ActiveRecord::Migration
  def change
    create_table :shops_users, :id => false do |t|
      t.references :shop
      t.references :user
    end
    add_index :shops_users, :shop_id
    add_index :shops_users, :user_id
  end
end
