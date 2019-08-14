class Farm < ActiveRecord::Base
  has_many :kopi
  has_many :order
end