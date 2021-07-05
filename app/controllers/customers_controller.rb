class CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def new
    @kopis = Kopi.all
  end

  def edit
    #this is like the select * from customer model
    @customer = Customer.find(params[:id])
  end

  def create
    # render plain: params[:customer].inspect
    #this is the link to the models customer
    @customer = Customer.new(customer_params)

    @customer.user_id = current_user.id

    @customer.save
    redirect_to @customer
  end

  def update
    @customer = Customer.find(params[:id])

    @customer.update(customer_params)
    # redirect_to '/customers/'+ (@customer.id).to_s
    #alternatively
    redirect_to @customer
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy

    redirect_to root_path
  end

  private
    def customer_params
      params.require(:customer).permit(:name, :kopi_id)
    end
end
