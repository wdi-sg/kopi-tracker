class Kopi < ActiveRecord::Base
  belongs_to :origin
  belongs_to :roastedness
  has_many :order
  has_and_belongs_to_many :customers
  has_and_belongs_to_many :users
end