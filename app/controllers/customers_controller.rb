class CustomersController < ApplicationController

  def index
    if request.query_parameters[:sort] == "number of kopi" && request.query_parameters[:order] == "desc"
        @customers = Customer.joins(:kopis)
                     .group("customers.id")
                     .order("count(kopis.id) desc")
    elsif request.query_parameters[:sort] == "number of kopi" && request.query_parameters[:order] == "asc"
        @customers = Customer.joins(:kopis)
                     .group("customers.id")
                     .order("count(kopis.id) asc")
    elsif request.query_parameters[:sort] == "name" && request.query_parameters[:order] == "desc"
        @customers = Customer.order(name: :desc)
    elsif request.query_parameters[:sort] == "name" && request.query_parameters[:order] == "asc"
        @customers = Customer.order(name: :asc)
    else
      @customers = Customer.all
    end
  end

  def new
  	@kopis = Kopi.all
  end

  def create
    @customer = Customer.new(customer_params)

    @customer.save
    redirect_to @customer
  end

  def show
    @customer = Customer.where(:id => params[:id])
  end

  def edit
  	@kopis = Kopi.all
    @customer = Customer.find(params[:id])
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
