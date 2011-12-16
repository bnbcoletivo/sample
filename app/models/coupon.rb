class Coupon < ActiveRecord::Base
  belongs_to :shop
  belongs_to :city
end
