class Account < ActiveRecord::Base
  has_many :contacts
  
  validates_presence_of :name
  validates :website,   :format => {
    :with =>    /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$/ix,
    :message => 'must be a complete URL'
  }, :allow_blank => true
  
  def full_address
    address + " " + city + " " + state + ", " + zip_code
  end
end
