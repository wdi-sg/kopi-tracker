class CustomersController < ApplicationController

  def index
    @customers = Customer.all

    #sortby cannot work!
    # if request.query_parameters[:sortby] == "asc"
    #     @customers = @customers.sort_by { |customer| customer.kopis.count}
    # elsif request.query_parameters[:sortby] == "desc"
    #     @customers = @customers.sort_by { |customer| customer.kopis.count}.reverse
    # end

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

  def edit
    @customer = Customer.find(params[:id])
    @kopis = Kopi.all
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update(customer_params)

    redirect_to @customer
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