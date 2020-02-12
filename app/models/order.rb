class Order < ActiveRecord::Base
	belongs_to :kopi

	def total_price 
		@total_price = kopi.price * weight.to_i
	end
end