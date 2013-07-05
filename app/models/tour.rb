class Tour < ActiveRecord::Base
  
  attr_accessible :date, :room_number, :comment

  belongs_to :property
  belongs_to :agent
  belongs_to :client
end
