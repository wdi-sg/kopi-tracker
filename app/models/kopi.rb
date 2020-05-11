class Kopi < ApplicationRecord
  belongs_to :roast
  belongs_to :origin
  has_many :orders
  has_and_belongs_to_many :customers

  def name_and_price
    [name, price_per_kg].join(' - $')
  end
end
