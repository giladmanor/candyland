class ApprochResults < ActiveRecord::Migration
  def change
    remove_column :approches,:result
    add_column :approches,:retweeted,:boolean, :default=>false
    add_column :approches,:followed,:boolean, :default=>false
    add_column :approches,:replied,:boolean, :default=>false
    add_column :approches,:favorited,:boolean, :default=>false
    
    add_column :approches,:retweets,:integer, :default=>0
    add_column :approches,:follows,:integer,  :default=>0
    add_column :approches,:replies,:integer, :default=>0
    add_column :approches,:favorites,:integer, :default=>0
    
    add_column :approches,:traffic,:integer, :default=>0
  end
end
