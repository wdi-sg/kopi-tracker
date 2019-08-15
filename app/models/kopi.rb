class Kopi < ActiveRecord::Base
  # AR classes are singular and capitalized by convention
  belongs_to :farm
  belongs_to :roast
  has_many :order
  belongs_to :user
  has_and_belongs_to_many :customers
end