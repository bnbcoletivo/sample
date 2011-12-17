class Shop < ActiveRecord::Base
  belongs_to :city
  belongs_to :location
end
