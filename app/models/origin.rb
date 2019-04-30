class Origin < ActiveRecord::Base
  # AR classes are singular and capitalized by convention
  has_many :kopi
end