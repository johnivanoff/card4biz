class Contact < ActiveRecord::Base
  belongs_to :account
  
  validates_presence_of :first_name, :last_name
  
  def full_name
    first_name + " " + last_name
  end
  
end
