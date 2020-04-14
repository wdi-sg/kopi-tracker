class Kopi < ActiveRecord::Base
  # AR classes are singular and capitalized by convention
  belongs_to :origin
  belongs_to :roast
  belongs_to :user
  has_and_belongs_to_many :customers
end