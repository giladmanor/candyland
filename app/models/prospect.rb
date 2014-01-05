class Prospect < ActiveRecord::Base
  belongs_to :account
  belongs_to :user
  has_many :approches
  has_feed :approch,"feed"
  to_info :name, :twitter,:likes, :assigned_to
  
  
  def assigned_to
     self.user.login
  end
  
end
