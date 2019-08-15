class Roast < ActiveRecord::Base
    has_many :kopi, dependent: :destroy
    belongs_to :user
end