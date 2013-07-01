class Lease < ActiveRecord::Base
  attr_accessible :rental_amount, :move_out, :move_in, :welcome_home, :thank_you_sent, :dropped_date, :coments, :referaal_amount
  
  belongs_to :building
  belongs_to :property
  belongs_to :agent
  has_many :tour
  end
