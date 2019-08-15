class Kopi < ActiveRecord::Base
  belongs_to :origin
  belongs_to :roast
  belongs_to :user
  has_many :order
end