class Sales < ActiveRecord::Base
	attr_accessible :buyer, :hear, :closing_date, :company, :office_number

    validates :buyer, length: { maximum: 50 }
    validates :company, length: { maximum: 50 }
    validates :office_number, length: { maximum: 50 }

	belongs_to :buyer, :class_name => "Individual"
    belongs_to :agent, :class_name => "Individual"
	belongs_to :property
	belongs_to :agent
end
