class RoastsController < ApplicationController
	def index
		@roasts= Roast.all
	end

	def new
		@roast = Roast.all
	
	end

	def show
		@roast = Roast.find(params[:id])
	end

	def create
		@roast = Roast.new(roast_params)
		
		@roast.save
		redirect_to @roast
	end

	private

	  def roast_params
	    params.require(:roast).permit(:name)
	  end

end
