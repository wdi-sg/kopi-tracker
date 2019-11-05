class Roast < ActiveRecord::Base
  has_many :kopi
  # AR classes are singular and capitalized by convention
end