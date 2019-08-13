class Kopi < ActiveRecord::Base
  # AR classes are singular and capitalized by convention
  belongs_to :farm
  belongs_to :roast
end