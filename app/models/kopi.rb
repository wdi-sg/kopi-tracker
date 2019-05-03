class Kopi < ActiveRecord::Base
  belongs_to :roast
  belongs_to :origin
  has_many :order

  validates :name, uniqueness: true

end