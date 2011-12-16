class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.string :title
      t.text :description
      t.text :highlights
      t.string :status
      t.timestamp :published_at
      t.timestamp :expiry_date
      t.references :shop
      t.references :city
      t.string :image
      t.float :full_price
      t.float :coupon_price
      t.integer :min_user_limit
      t.integer :max_avaliable

      t.timestamps
    end
    add_index :coupons, :shop_id
    add_index :coupons, :city_id
  end
end
