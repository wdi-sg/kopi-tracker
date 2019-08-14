class Kopi < ActiveRecord::Base
    belongs_to :origin
    belongs_to :roast
    validates :name, presence: true
end