class Origin < ApplicationRecord
    has_many :kopi, dependent: :destroy
    has_many :order, through: :kopi
    validates :location, presence: true
    validates :phone, presence: true
end
