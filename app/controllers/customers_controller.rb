class CustomersController < ApplicationController
  def index
    if request.query_parameters[:sort] == "desc"
      @customers = Customer.left_outer_joins(:kopis)
                   .group("customers.id")
                   .order("count(kopis.id) desc")
    else
      @customers = Customer.left_outer_joins(:kopis)
                   .group("customers.id")
                   .order("count(kopis.id) asc")
    end
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def new
    @kopis = Kopi.all
  end

  def create
    @customer = Customer.new(post_params)

    @customer.save
    redirect_to @customer
  end

  def edit
    @customer = Customer.find(params[:id])
    @kopis = Kopi.all
  end

  def update
    @customer = Customer.find(params[:id])

    @customer.update(post_params)
    redirect_to @customer
  end

  def destroy
    @customer = Customer.find(params[:id])

    @customer.destroy
    redirect_to root_path
  end

private
  def post_params
    params.require(:customer).permit(:name, :kopi_ids => [])
  end

end