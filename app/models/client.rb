class Client < ActiveRecord::Base
  attr_accessible :comments, :file_number, :source, :company, :price, :date_received, :confirmed

  validates :file_number, length: { maximum: 50 }
  validates :company, length: { maximum: 50 }

  belongs_to :individual
  has_many :leases
end
