class Customer < ApplicationRecord
  has_and_belongs_to_many :kopis
  validates  :kopis,  presence: true

end