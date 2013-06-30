class Owner < ActiveRecord::Base
  attr_accessible :comments, :contactInfo, :name

  validates :name, :presence => true
  validates :contactInfo, :presence => true

  has_many :buildings
end
