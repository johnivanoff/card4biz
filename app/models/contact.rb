class Contact < ActiveRecord::Base
  has_one :account
end
