class Location < ActiveRecord::Base
  has_many :shops
  
  def to_s
    self.lat + "; " + self.lng
  end
end
