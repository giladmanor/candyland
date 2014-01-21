class Prospect < ActiveRecord::Base
  belongs_to :account
  belongs_to :user
  has_many :approches
  
  belongs_to :gender
  belongs_to :age_group
  
  
  has_feed :approch,"actions"
  to_info :name, :twitter,:likes, :assigned_to, :score
  
  
  def assigned_to
     self.user.nil? ? "" : self.user.login
  end
  
  def score
    sum = 0
    self.approches.each{|a| 
      sum+= 5 if a.retweeted
      sum+= 3 if a.followed
      sum+= 2 if a.replied
      sum+= 1 if a.favorited
      
    }
    sum
  end
  
end
