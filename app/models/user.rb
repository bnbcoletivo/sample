class User < ActiveRecord::Base
  belongs_to :role
  belongs_to :city
  
  def to_s
    self.firstname + " " + self.lastname
  end
end
