class Approch < ActiveRecord::Base
  belongs_to :prospect
  
  to_info :content, :status, :result
  
end
