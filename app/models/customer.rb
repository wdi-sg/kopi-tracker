class Customer < ApplicationRecord

  has_and_belongs_to_many :kopis

  validates :name, presence: true, length: { minimum: 3, maximum: 10 }

end