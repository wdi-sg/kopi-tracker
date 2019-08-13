class Kopi < ActiveRecord::Base
  has_many :origin
  has_many :roast
end
