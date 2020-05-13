class Kopi < ActiveRecord::Base
  belongs_to :origin
  belongs_to :user
  has_one :roast
end