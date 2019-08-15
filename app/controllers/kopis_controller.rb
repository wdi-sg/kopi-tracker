class KopisController < ApplicationController
	before_action :authenticate_user!, :except => [ :show, :index ]
	def index
		@kopis= Kopi.all
		if user_signed_in?
	      @message = "HELLO"

	    else
	      @message = "HELLO NOT LOGGED IN"

	    end
	end

	def new

		if user_signed_in?
	      @message = "HELLO"

	    else
	      @message = "HELLO NOT LOGGED IN"

	    end
		@farms = Farm.all
		
		@roasts =Roast.all

	end

	def show
		
		@kopi = Kopi.find(params[:id])
		@customers = @kopi.customers
		if user_signed_in?
	      @message = "HELLO"

	    else
	      @message = "HELLO NOT LOGGED IN"

	    end

		 respond_to do |format|
	      format.html
	      format.json { render json: @kopi}
	    end
	end


	 def edit
    	@kopi = Kopi.find(params[:id])
  	end



	def create

		@kopi = Kopi.new(kopi_params)
		
	    @kopi.user = current_user
 # byebug
	    if @kopi.save
	      redirect_to @kopi
	     
	    else
	      render 'new'
	      
	    end
	end

	def destroy
	    @kopi = Kopi.find(params[:id])
	    @kopi.destroy

	    redirect_to root_path
	  end


	private

	  def kopi_params
	    params.require(:kopi).permit(:name, :price, :roast_id, :farm_id, :user_id, :customer_ids => [])
	  end

	  

end
