class CustomersController < ApplicationController

  def index
  end

  def new
  end

  def create
    @customer = Customer.new(customer_params)
    @customer.save

    redirect_to
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def customer_params
      params.require(:customers).permit(:name)
    end



end