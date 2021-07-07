class CustomersController < ApplicationController
    def index
        @customers = Customer.all

    end
  
    def show  
        @customer = Customer.find(params[:id]) 
    end
  
    def new

    end
  
    def edit
        @customer = Customer.find(params[:id])
    end
  
    def create
        @customer = Customer.new(customer_params)

        @customer.save
        redirect_to @customer
    end
  
    def update
        @customer = Customer.find(params[:id])
      
        @customer.update(customer_params)
        redirect_to @customer
    end
  
    def destroy
        @customer = Customer.find(params[:id])
        @customer.destroy
      
        redirect_to root_path
    end

    private
    def customer_params
        params.require(:customer).permit(:name)
    end
end