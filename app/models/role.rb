class Role < ActiveRecord::Base
  serialize :lock, Array
  belongs_to :account
  has_many :users
  to_info :name, :code
end
