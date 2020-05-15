class Kopi < ApplicationRecord
	has_many :origin
	has_many :roast
	has_and_belongs_to_many :customer
end