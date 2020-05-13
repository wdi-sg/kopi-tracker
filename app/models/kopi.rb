class Kopi < ApplicationRecord
  belongs_to :roast
  belongs_to :origin
  has_and_belongs_to_many :customers
end
