class Customer < ApplicationRecord
  has_and_belongs_to_many :kopi

  validates :name, presence: true, length: { minimum: 3, maximum: 20 }



end
