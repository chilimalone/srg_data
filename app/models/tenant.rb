class Tenant < ActiveRecord::Base
  belongs_to :building
  attr_accessible :comments, :contactInfo, :name, :room
end
