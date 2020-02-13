class Roast < ApplicationRecord

    has_many :kopi
    belongs_to :user

end