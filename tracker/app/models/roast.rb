class Roast < ApplicationRecord
  # AR classes are singular and capitalized by convention
  has_many :kopis
end