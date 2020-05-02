class Kopi < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 3, maximum: 20 }

  belongs_to :origin
  belongs_to :roast
  belongs_to :user
  has_and_belongs_to_many :customers
end