class CustomersController < ApplicationController
  before_action :authenticate_user!, :except => [:index ]

  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
    @kopis = Customer.find(params[:id]).kopis
  end

  def new
    @customers = Customer.all
    @kopis = Kopi.all
  end

  def create
    @customer = Customer.new(customer_params)
    @customer.save

    redirect_to @customer
  end

  def edit
  end

  def update
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy

    redirect_to root_path
  end

  private
    def customer_params
      params.require(:customer).permit(:name, :kopi_ids => [])
    end
end