class Approch < ActiveRecord::Base
  belongs_to :prospect
  
  to_info :content, :status, :retweeted,:followed,:replied,:favorited,:retweets,:follows,:replies,:favorites,:traffic
  
end
