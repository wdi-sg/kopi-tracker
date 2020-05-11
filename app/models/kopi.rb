class Kopi < ApplicationRecord
  belongs_to :origin
  belongs_to :roast
  has_many :orders
end