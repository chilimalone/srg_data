class Individual < ActiveRecord::Base
  attr_accessible :city, :email, :fname, :lname, :phone, :state, :street_1, :string_2, :zip

  validates :city, :length=> (:

  has_many :clients
  has_many :sales
  has_many :tenants
  has_many :property
  has_many :sales
end
