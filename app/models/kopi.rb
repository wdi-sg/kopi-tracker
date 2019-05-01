class Kopi < ApplicationRecord
  belongs_to :roast
  belongs_to :origin

  has_many :order
end