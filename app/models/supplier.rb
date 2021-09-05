class Supplier < ApplicationRecord
  validates :name, length: { minimum: 2 }
  validates :name, :email, :phone_number, presence: true

  has_many :products
end
