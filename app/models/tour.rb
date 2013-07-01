class Tour < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :date, :room_number, :comment,
  belongs_to :property, through :room
  belongs_to :room
  belongs_to :agent_id
  belongs_to :client
end
