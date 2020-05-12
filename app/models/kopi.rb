class Kopi < ApplicationRecord
	has_many :origin
	has_many :roast
end