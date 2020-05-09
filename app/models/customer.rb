class Customer < ApplicationRecord
    has_many :kopis, through: :stocks
end
