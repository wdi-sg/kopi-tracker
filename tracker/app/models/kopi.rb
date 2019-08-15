class Kopi < ApplicationRecord
  has_and_belongs_to_many :customers
  belongs_to :farm
  belongs_to :user
  belongs_to :roastedness
end
