class Tour < ActiveRecord::Base
  
  attr_accessible :date, :room_number, :comment

  belongs_to :property
  belongs_to :agent, :class_name => "Individual", :foreign_key => 'agent_id'
  belongs_to :client
end
