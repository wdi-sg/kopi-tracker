class Roast < ActiveRecord::Base
	has_many :kopi
	validates :roast, presence: true, length: { minimum: 3, maximum: 20 }

end