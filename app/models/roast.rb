class Roast < ActiveRecord::Base
    has_many :kopi
    has_many :user
end