class Kopi < ApplicationRecord
  belongs_to :origin
  belongs_to :roast
  belongs_to :user
  validates :name, presence: true
end
