class CustomersController < ApplicationController

 def index
    @customers = Customer.all
  end


 def create
    @customer = Customer.new(customer_params)

    @customer.save
    redirect_to @customer
  end


  def new
    @kopis = Kopi.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def customer_kopi
    @customer = Customer.find(params[:customer_id]);
    @kopi = Kopi.find(params[:id]);
    if @customer.kopis.exists?(@kopi.id)
      @customer.kopis.delete(@kopi)
    else
      @customer.kopis << @kopi
    end
    redirect_to kopi_path(@kopi)
  end
end