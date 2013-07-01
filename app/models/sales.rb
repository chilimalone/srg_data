class Sales < ActiveRecord::Base
	attr_accessible :buyer, :hear, :closing_date, :company, :office_number
	belongs_to :individual
	belongs_to :property
	belongs_to :agent
end
