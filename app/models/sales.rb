class Sales < ActiveRecord::Base
	attr_accessible :buyer, :hear, :closing_date, :company, :office_number

    validates :buyer, :length => { maximum: 50 }
    validates :company, :length => { maximum: 50 }
    validates :office_number, :length => { maximum: 50 }

	belongs_to :buyer, :class_name => "Individual", :foreign_key => 'buyer_id'
    belongs_to :agent, :class_name => "Individual", :foreign_key => 'agent_id'
	belongs_to :property
end
