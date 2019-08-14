class KopisController < ApplicationController
	def index
		@kopi= Kopi.all
	end
	def new
		@farms = Farm.all
		@orders =Order.all

	end
	def show
		@kopi = Kopi.find(params[:id])
	end

	def create
		@kopi = Kopi.new(kopi_params)
		@kopi.save
		redirect_to @kopi
	end

	private

	  def kopi_params
	    params.require(:kopi).permit(:name, :price, :roast, :farm)
	  end



end
