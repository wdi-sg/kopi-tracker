class CustomersController < ApplicationController

  def new
    @kopis=Kopi.all
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)


    if @customer.save
      redirect_to root_path
    else
      @kopis=Kopi.all
       render 'new'
    end
  end

  def show
    @customer = Customer.find(params[:id])
  end

private

  def customer_params
    params.require(:customer).permit(:name, :kopi_ids=>[])
  end

end