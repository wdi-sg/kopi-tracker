class KopisController < ApplicationController
	def index
		
	end

	def new
	end

	def edit
	end

	def create
		@kopi = Kopi.new(coffee_params)
		@kopi.save
		redirect_to @kopi

	end

	def show
	end

	def update
	end

	def destroy
	end

end
