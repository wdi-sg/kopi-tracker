class Kopi < ActiveRecord::Base
  belongs_to :farm
  belongs_to :user
  has_and_belongs_to_many :customers
end