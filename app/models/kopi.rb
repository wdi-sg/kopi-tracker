class Kopi < ApplicationRecord
    belongs_to :origin
    belongs_to :roast
    validates :name, presence: true
    has_many :order, dependent: :destroy
    has_and_belongs_to_many :customers
end
