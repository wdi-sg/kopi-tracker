class Kopi < ApplicationRecord
  belongs_to :origin, optional: true
  belongs_to :user
  has_and_belongs_to_many :customers
end
