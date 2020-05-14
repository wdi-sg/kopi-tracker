class Kopi < ApplicationRecord
	belongs_to :origin
	belongs_to :roast
	belongs_to :user
	has_and_belongs_to_many :customers, join_table: 'customer_preferences'
end
