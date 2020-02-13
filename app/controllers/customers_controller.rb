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
      @customer.update(customer_params)

      redirect_to customer_path
      
    end
  
    def edit
      @customer = Customer.find(params[:id])
      @kopis = Kopi.all()
    end
  
    def destroy
      @customer = Customer.find(params[:id])
    end  
  
    private
  
    def customer_params
      params.require(:customer).permit(:kopi_ids => [])
    end
  end
  