class Coupon < ActiveRecord::Base
  belongs_to :shop
  belongs_to :city
  
  def self.with_location(location_id)
    joins(:shop => :location).where('locations.id = ?', location_id)
  end
  
end
