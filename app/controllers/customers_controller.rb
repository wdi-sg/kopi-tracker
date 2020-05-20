class CustomersController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]

	def index
			@customers = Customer.all
	end

  def new
    @customers = Customer.all
    @kopis = Kopi.all
  end

  def create
    #user session will be saved to retain info when user relogs
    #e.g. tracking user added customers
    #user_session['created_customers_id'].append(@customer.id)

  	@customer = Customer.new(customer_params)
  	
    if @customer.save
      redirect_to @customer
    else
      @customer
      @customers = Customer.all
      @kopis = Kopi.all
      render 'new'
    end
  end

  def show
  	@customer = Customer.find(params[:id])
    @kopis = @customer.kopis
  end

  def edit
    @customer = Customer.find(params[:id])
    @kopis = Kopi.all
  end

  def update
    @customer = Customer.find(params[:id])

    updated = @customer.update(customer_params)
    if updated == true
      redirect_to @customer
    else
      render 'edit'
    end
  end

  def destroy
  	Customer.find(params[:id]).destroy
    redirect_to customers_path
  end
  	
  private
  def customer_params
  	params.require(:customer).permit(:name, :email, :phone, :kopi_ids => [])
  end
end