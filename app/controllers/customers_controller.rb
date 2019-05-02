class CustomersController < ApplicationController
    def index
        @customers = Customer.all
    end 
    def new
        # @roasts = Roast.all
        # @origins = Origin.all
        @kopis = Kopi.all
    end
    
    def create
        @customer = Customer.new(customer_params)
        @customer.save
        redirect_to @customer
    end
    
    def show
        @customer = Customer.find(params[:id])
        @kopis = Kopi.where(id: @customer.kopi_ids)
    end

    private
    def customer_params
        params.require(:customer).permit(:name, :kopi_ids => [])
    end
end



