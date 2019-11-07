class Kopi < ActiveRecord::Base
  belongs_to :origin
  belongs_to :roast
  has_and_belongs_to_many :customers
  validates :name, presence: true, length: { minimum: 3, maximum: 20 }
end