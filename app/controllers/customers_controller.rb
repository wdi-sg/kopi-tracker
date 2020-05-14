class CustomersController < ApplicationController
  before_action :authenticate_customer!, :except => [:index]

  def index
  end

  def show
    @customer = Customer.find(params[:id])
    @kopis = Customer.find(params[:id]).kopis
  end

  def edit
    @kopis = Kopi.all
    @customer = current_customer
  end

  def update
    @customer = current_customer

    @customer.update(customer_params)
    byebug
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy

    redirect_to root_path
  end

  private
    def customer_params
      params.require(:customer).permit(:kopi_ids => [])
    end
end