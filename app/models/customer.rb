class Customer < ApplicationRecord

  has_many :customer_kopi
  has_many :kopi, through: :customer_kopi
end