class CustomersController < ApplicationController


def index

	@customers = Customer.all
end


def new


end

def create



end


def show
		
	@customer = Customer.find(params[:id])
	@kopis = @customer.kopis
	

	 respond_to do |format|
      format.html
      format.json { render json: @customer}
    end
end



	private

	  def customer_params
	    params.require(:customer).permit(:name, :kopi_ids => [])
	  end

	  










end

