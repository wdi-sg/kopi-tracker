class CustomersController < ApplicationController
  def index
    @customers = Customer.all.order_list(params[:sort_by])
  end

  def new
    @kopis = Kopi.all
  end

  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      redirect_to @customer
    else
      render 'new'
    end
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
    @kopis = Kopi.all
  end

  def update
    @customer = Customer.find(params[:id])
    update_happened = @customer.update(customer_params)

    if update_happened
      redirect_to @customer
    else
      render 'edit'
    end
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy

    redirect_to customers_path
  end

  private
    def customer_params
      params.require(:customer).permit(:name, :kopi_ids => [])
    end
end