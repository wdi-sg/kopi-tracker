class CustomersController < ApplicationController

def index
  @customers = Customer.all
end

def new
  @kopis = Kopi.all
  end

  def show
    @customer = Customer.find(params[:id])
    @kopi = Customer.find(@customer.id).kopis
  end

def create
  @customer = Customer.new(customer_params)
  @customer.save
  if @customer.save
    redirect_to customers_path
  else
    @kopis = Kopi.all

    render plain: errors.messages.inspect
  end


end

private

def customer_params
  params.require(:customer).permit(:name, :kopi_ids => [])
end

end