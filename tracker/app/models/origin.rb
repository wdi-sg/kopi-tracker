class Origin < ApplicationRecord
  # AR classes are singular and capitalized by convention
  has_many :kopi
end