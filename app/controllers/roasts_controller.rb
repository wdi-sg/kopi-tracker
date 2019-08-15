class RoastsController < ApplicationController
	before_action :authenticate_admin!, :except => [ :show, :index ]
	admins = User.all

	def index
		if current_user.try(:admin?)
		   @message = "Hello, boss"

	    else
	      @message = "HELLO NOT LOGGED IN"

	    end
		@roasts= Roast.all

	end

	def new
		
	
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
