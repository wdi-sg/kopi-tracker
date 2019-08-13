class Roast < ApplicationRecord
    has_many :kopi, dependent: :destroy
end
