class CustomersController < ApplicationController
    def index
        @customers = Customer.all
    end
    
    def new
        @coffees = Coffee.all
    end

    def create
        @customer = Customer.new(customer_params)
        @customer.save
        redirect_to @customer
    end

    def show
        @customer = Customer.find(params[:id])
    end

    private
    def customer_params
        params.require(:customer).permit(:name, :coffee_ids => [])
    end
end