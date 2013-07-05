class Tenant < ActiveRecord::Base
  attr_accessible :leased_signed, :lease_expired

  belongs_to :room
  belongs_to :individual
end
