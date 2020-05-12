class Kopi < ActiveRecord::Base
  belongs_to :origin
  belongs_to :roast
  has_many :order
  belongs_to :user
end