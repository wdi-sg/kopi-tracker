class Order < ActiveRecord::Base
    has_many :kopi
    has_many :roast
end