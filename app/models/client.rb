class Client < ActiveRecord::Base
  attr_accessible :comments, :file_number, :source, :company, :price, :date_received, :confirmed, :individual_id
  belongs_to :individual
  has_many :lease
  end
