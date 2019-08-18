class CustomersController < ApplicationController
    
    def index
      @customers = Customer.all
    end

    def customers_per_kopi
        @customers = Kopi.find(params[:id]).customers
        render 'customer_per_kopi'
    end 
    
    def kopis_per_customer
        @kopis = Customer.find(params[:id]).kopis
        render 'kopis_per_customer'
      end 
    
    def show
      @customer = Customer.find(params[:id])
    end
    
    # Customer Create Form Display 
    def new  
      @roasts = Roast.all
      @origins = Origin.all
    end

    # Customer Create Post 
    def create
      @customer = Customer.new(customer_params)
      @Customer.user = current_user
      
      if @Customer.save
       redirect_to @customer
      else
       render 'new'
      end

    end
    
    def edit
      @customer = Customer.find(params[:id])
    end
    
    def update
      @customer = Customer.find(params[:id])
      @Customer.update(customer_params)
      redirect_to @customer
    end
    
    def destroy
      @customer = Customer.find(params[:id])
      @Customer.destroy
    
      redirect_to root_path
    end
      
    private
    def customer_params
        params.require(:customer).permit(:name, kopi_ids => [])
    end
    end