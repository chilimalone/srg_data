class Room < ActiveRecord::Base
	attr_accessible :room_number,
	belongs_to :building
	has_many :tenant
	has_many :tour
end
