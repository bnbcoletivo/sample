class Coupon < ActiveRecord::Base
  belongs_to :shop
  belongs_to :city
  
  def self.with_location(lat, lng)
    joins(:shop).where('shops.lat = ? AND shops.lng = ?', lat, lng)
  end
  
end
