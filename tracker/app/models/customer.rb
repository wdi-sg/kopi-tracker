class Customers < ApplicationRecord
  # AR classes are singular and capitalized by convention
  has_and_belongs_to_many :kopis
end