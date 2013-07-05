class Individual < ActiveRecord::Base
  attr_accessible :city, :email, :fname, :lname, :phone, :state, :street_1, :string_2, :zip

  validates :city, length: { maximum: 25 }
  validates :email, length: { maximum: 50 },
                    format: { with: /\A[a-zA-Z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}\z/,
                              message: "Need valid email." }
  validates :fname, length: { maximum: 15 },
                    format: { with: /\A[a-zA-Z ]+\z/,
                              message: "Only letters allowed" }
  validates :lname, length: { maximum: 15 },
                    format: { with: /\A[a-zA-Z ]+\z/,
                              message: "Only letters allowed" }
  validates :phone, length: { is: 10 },
                    format: { with: /\A[0-9]+\z/,
                              message: "Only numbers allowed" }
  validates :state, length: { maximum: 25 }
  validates :zip, length: { maximum: 10 }
  validates :street_1, length: { maximum: 50 }
  validates :street_2, length: { maximum: 50 }

  has_many :clients
  has_many :sales
  has_many :tenants
  has_many :properties
  has_many :sales
end
