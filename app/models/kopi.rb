class Kopi < ApplicationRecord
  belongs_to :origin

  has_many :customer_kopi
  has_many :customer, through: :customer_kopi
end