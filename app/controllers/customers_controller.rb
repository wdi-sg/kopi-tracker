class CustomersController < ApplicationController
    before_action :authenticate_customer!
    # , :except => [ :show]
  
  
    def index
        if params[:sort] == 'DESC'
            @customers = Customer.joins(:kopis).group("customers.id").order("count(customers.id) DESC")
        elsif params[:sort] == 'ASC'
            @customers = Customer.joins(:kopis).group("customers.id").order("count(customers.id) ASC") 
        else
            @customers = Customer.all()
        end
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
  