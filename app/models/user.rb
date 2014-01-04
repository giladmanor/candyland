class User < ActiveRecord::Base
  belongs_to :account
  belongs_to :role, :class_name=>"Role"
  serialize :data, Hash
  to_info :login
  
end
