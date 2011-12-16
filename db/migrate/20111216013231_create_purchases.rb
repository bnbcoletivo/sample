class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.references :user
      t.references :coupon
      t.integer :status
      t.string :code

      t.timestamps
    end
    add_index :purchases, :user_id
    add_index :purchases, :coupon_id
  end
end
