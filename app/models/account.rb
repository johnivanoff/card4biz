class Account < ActiveRecord::Base
  has_many :contacts
  
  def full_address
    address + " " + city + " " + state + ", " + zip_code
  end
end
