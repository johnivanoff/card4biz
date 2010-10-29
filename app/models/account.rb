class Account < ActiveRecord::Base
  has_many :contacts
end
