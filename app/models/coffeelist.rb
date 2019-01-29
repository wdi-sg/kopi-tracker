class Coffeelist < ApplicationRecord
    belongs_to :origin
    belongs_to :roast
    belongs_to :order
end
