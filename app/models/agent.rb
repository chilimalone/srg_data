class Agent < ActiveRecord::Base
  attr_accessible :fname, :lname
  has_many :tours
  has_many :leases
  has_many :sales
end
