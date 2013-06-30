class Client < ActiveRecord::Base
  attr_accessible :comments, :file_number, :source, :company, :price, :date_received, :confirmed, :individual_id
end
