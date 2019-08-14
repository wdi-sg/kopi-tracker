class Kopi < ActiveRecord::Base
	belongs_to :origin
	belongs_to :roastedness
	has_many :order

	def name_with_price
		"#{name} - $#{price}"
	end

end