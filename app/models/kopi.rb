
class Kopi < ActiveRecord::Base
  belongs_to :farm
  has_many :order
end
