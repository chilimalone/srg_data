class Building < ActiveRecord::Base
  belongs_to :owner
  attr_accessible :address, :comments, :name

  has_many :tenants
  has_many :leases
end
