class Kopi < ApplicationRecord
  belongs_to :roast
  belongs_to :origin
  has_many :order

  def name_and_price
    [name, price_per_kg].join(' - $')
  end
end
