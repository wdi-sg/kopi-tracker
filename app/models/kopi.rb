class Kopi < ActiveRecord::Base
  belongs_to :origin
  belongs_to :roastedness
  has_many :order
end