class Customer < ApplicationRecord
  has_and_belongs_to_many :kopis
  validates :name, :kopi_ids, presence: true
  validates :quantity, numericality: { only_integer: true }
end
