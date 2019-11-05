class Kopi < ApplicationRecord
    belongs_to :user
    belongs_to :origin
    belongs_to :roast
end
