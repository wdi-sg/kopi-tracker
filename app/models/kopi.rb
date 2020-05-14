class Kopi < ActiveRecord::Base
  belongs_to :origin
  has_one :roast
end