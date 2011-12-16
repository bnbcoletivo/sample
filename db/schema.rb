# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111216014735) do

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coupons", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.text     "highlights"
    t.string   "status"
    t.datetime "published_at"
    t.datetime "expiry_date"
    t.integer  "shop_id"
    t.integer  "city_id"
    t.string   "image"
    t.float    "full_price"
    t.float    "coupon_price"
    t.integer  "min_user_limit"
    t.integer  "max_avaliable"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "coupons", ["city_id"], :name => "index_coupons_on_city_id"
  add_index "coupons", ["shop_id"], :name => "index_coupons_on_shop_id"

  create_table "purchases", :force => true do |t|
    t.integer  "user_id"
    t.integer  "coupon_id"
    t.integer  "status"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "purchases", ["coupon_id"], :name => "index_purchases_on_coupon_id"
  add_index "purchases", ["user_id"], :name => "index_purchases_on_user_id"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shops", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "city_id"
    t.string   "lat"
    t.string   "lng"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shops", ["city_id"], :name => "index_shops_on_city_id"

  create_table "shops_users", :id => false, :force => true do |t|
    t.integer "shop_id"
    t.integer "user_id"
  end

  add_index "shops_users", ["shop_id"], :name => "index_shops_users_on_shop_id"
  add_index "shops_users", ["user_id"], :name => "index_shops_users_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "password"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "cpf"
    t.string   "email"
    t.integer  "role_id"
    t.integer  "status"
    t.string   "address"
    t.integer  "city_id"
    t.string   "cel"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["city_id"], :name => "index_users_on_city_id"
  add_index "users", ["role_id"], :name => "index_users_on_role_id"

end
