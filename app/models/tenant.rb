class Tenant < ActiveRecord::Base
  attr_accessible :Leased_Signed, :Leased_Expired

  belongs_to :room
  belongs_to :property, through :room
  belongs_to :individual
    
  end
