class Kopi < ApplicationRecord
  validates :name, presence: true, length: {minimum: 2, maximum: 20}
  belongs_to :farm
  belongs_to :roast
  belongs_to :user
  has_and_belongs_to_many :customers
end