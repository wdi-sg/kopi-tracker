class Kopi < ApplicationRecord
  # AR classes are singular and capitalized by convention
  belongs_to :roast
  belongs_to :origin
end