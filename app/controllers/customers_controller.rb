class CustomersController < ApplicationController
    before_action :authenticate_user!, :except => [ :show]
  
  
    def index
      @customer = Customer.scoped
    end
  
    def show
      @customer = Customer.find(params[:id])
      @kopis = @customer.kopis
    end
  
    def create
      @customer = Customer.new(params[:Customer])
    end
  
    def update
      @customer = Customer.find(params[:id])
    end
  
    def edit
      @customer = Customer.find(params[:id])
    end
  
    def destroy
      @customer = Customer.find(params[:id])
    end  
  
    private
  
    def customer_params
      params.require(:kopi).permit(:name, :roast_id,  :pound_price, :origin_id)
    end
  end
  