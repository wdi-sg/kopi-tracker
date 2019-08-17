class Kopi < ActiveRecord::Base
  belongs_to :origin
  belongs_to :roast
  # AR classes are singular and capitalized by convention
end