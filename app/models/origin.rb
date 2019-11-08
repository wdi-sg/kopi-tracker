class Origin < ApplicationRecord
    has_many :kopi
    validates :location, presence: true, length: { minimum: 3, maximum: 20 }
    validates :phone, presence: true, length: { minimum: 3, maximum: 20 }

end
