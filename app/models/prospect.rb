class Prospect < ActiveRecord::Base
  belongs_to :account
  belongs_to :user
  
  to_info :name
  
end
