class Order < ApplicationRecord
    has_and_belongs_to_many :customer
    has_many :kopi

end
