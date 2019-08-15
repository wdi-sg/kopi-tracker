class Kopi < ActiveRecord::Base
  belongs_to :origin
  belongs_to :roast
  has_many :order
  has_and_belongs_to_many :customer
end