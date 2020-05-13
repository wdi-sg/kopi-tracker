class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def new
  end

  def edit
  end

  def show
    @customer = Customer.find(params[:id])
  end

  private
    def customer_params
      params.require(:customer).permit(:name, :kopi_ids => [])
    end
end