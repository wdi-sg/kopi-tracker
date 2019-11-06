class Kopi < ApplicationRecord
    # AR classes are singular and capitalized by convention
    belongs_to :origin
    has_and_belongs_to_many :customers
  end