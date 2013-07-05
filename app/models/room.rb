class Room < ActiveRecord::Base
	attr_accessible :room_number,
	belongs_to :property
	has_many :tenants
	has_many :tours
end
