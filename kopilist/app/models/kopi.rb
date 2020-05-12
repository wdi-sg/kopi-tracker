class Kopi < ActiveRecord::Base
  belongs_to :farm
  belongs_to :roast
  belongs_to :user
  has_many :order
end