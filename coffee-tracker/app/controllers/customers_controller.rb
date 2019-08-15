class CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end

  def new
    @kopis = Kopi.all
  end

  def create
    # render plain: params[:post].inspect
    @customer = Customer.new(customer_params)
    @customer.save

    redirect_to @customer
  end

  def show
    @customer = Customer.find(params[:id])

  end

  # def edit
  #   @customer = Customer.find(params[:id])
  # end

  # def update
  #   @customer = Customer.find(params[:id])
  #   @customer.update(customer_params)

  #   redirect_to @customer
  # end

  # def destroy
  #   @kopi = Kopi.find(params[:id])
  #   @kopi.destroy

  #   redirect_to root_path
  # end

private

  def customer_params
    params.require(:customer).permit(:name, :kopi_ids => [])

  end

end