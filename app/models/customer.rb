class Customer < ApplicationRecord
    has_and_belongs_to_many :coffeelist
end
