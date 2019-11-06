class CustomersController < ApplicationController
  
   
    def index
        @customers = Customer.all
    end

    def create
        @customer = Customer.new(customer_params)
    
        @customer.save
        redirect_to @customer
      end

      def new
        @customers = Customer.all
        @kopis = Kopi.all
    end


    def show
        @customer= Customer.find(params[:id])
      end




private
  
    def customer_params
      params.require(:customer).permit(:name, :kopi_ids => [])
    end
  
end

