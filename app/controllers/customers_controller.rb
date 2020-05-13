class CustomersController < ApplicationController
  def index
     @customer = Customer.all
   end
   def show
     @customer = Customer.find(params[:id])
   end
   def new
     @kopis = Kopi.all
      @customer = Customer.all
   end
   def create
    #render plain: params[:customer].inspect
    @customer = Customer.new(customer_params)

    result = @customer.save()

    # diagnose the faliure of the insert query
    if result == true
      redirect_to @customer
    else
      render plain: params[:customer].inspect
    end
    end
   private
     def customer_params
       params.require(:customer).permit(:name, :kopi_ids=>[])

    end
 end