class Roast < ActiveRecord::Base
    has_many :kopi, dependent: :destroy
end