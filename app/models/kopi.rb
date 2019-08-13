class Kopi < ApplicationRecord
    belongs_to :origin
    belongs_to :roast
    validates :name, presence: true

    has_many :order, dependent: :destroy
end
