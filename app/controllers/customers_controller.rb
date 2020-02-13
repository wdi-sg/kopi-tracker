class CustomersController < ApplicationController
 def index
    @customer = Customer.all
  end
  def show
    @customer = Customer.find(params[:id])
  end
  def new
    @kopis = Kopi.all
  end
  def create

  end
  private
    def customer_params
      params.require(:customer).permit(:name, :kopi_ids=>[])
    end
end