class Kopi < ActiveRecord::Base
  belongs_to :origin
  has_many :order
  has_and_belongs_to_many :customers
end