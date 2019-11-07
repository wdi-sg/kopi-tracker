class CustomersController < ApplicationController
  def index

    # sort for customers by array.sort_by for @customers
    # look at Nat's!!!

    if params[:sort_parm] && params[:sort_order]
      @customers = Customer.order("#{params[:sort_param]} #{params[:sort_order]}")

      @kopis = @customer.kopis.find_by_sql("SELECT customer_id, COUNT(kopi_id) FROM customers_kopis GROUP BY customer_id; ")

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

  def edit
    @customer = Customer.find(params[:id])
    @kopis = Kopi.all
  end

  def show
    @customer = Customer.find(params[:id])
  end
end

  private 
  def customer_params
    params.require(:customer).permit(:name, :kopi_ids => [])
  end
