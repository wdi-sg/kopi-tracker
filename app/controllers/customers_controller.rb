class CustomersController < ApplicationController
    def index
        end
    
      def new
      end
    
      def create
        
      end
    
      def show
        @customer = Customer.find(params[:id])
      end
    
      def edit
       
      end
    
      def update
        
      end
    
      def destroy
       
      end
    
    
    private
    
    def customer_params
      params.require(:customer).permit(:name, :kopi_ids => [])
    end
    
end