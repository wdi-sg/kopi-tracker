class OrdersController < ApplicationController
	def index
		@orders = Order.all
	end

	def new
	end

	def show
	end

	def create
	end

	def destroy
	end
end
