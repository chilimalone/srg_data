class Property < ActiveRecord::Base
  belongs_to :owner
  attr_accessible :street_1, :street_2, :city, :state, :zip, :comments,

  belongs_to :individual
  belongs_to :agent
  has_many :room
  has_many :tenants, through :room
  has_many :leases
  has_many :sales
end
