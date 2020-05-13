class CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end

  def show
        # deal with the case that we are trying to get a ranger for a park that doesn't exist
    @customer = Customer.find(params[:id])



  end

  def new
    @kopis = Kopi.all
  end

  def edit
        @kopis = Kopi.all
        @customer = Customer.find(params[:id])
  end

  def create
    puts "I am here I am here I am here"
    @customer = Customer.new(customer_params)
    puts @customer
    @customer.save
    redirect_to @customer
  end

  def update
  @customer = Customer.find(params[:id])
puts "fjdlkjfldasjfkldasjflkadsjlfkdjasklfjwelqk;asdjfg;lkdsj"
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
    params.require(:customer).permit(:customerName, :kopi_ids => [])
  end

end