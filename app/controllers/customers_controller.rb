class CustomersController < ApplicationController

  def index

    if request.query_parameters[:sort] === "desc"
      @customers = Customer.order(name: :desc)

    elsif request.query_parameters[:sort] === "asc"
      @customers = Customer.order(name: :asc)

    else
      @customers = Customer.all.order(params[:sort])

    end
  end

  def new
    @kopis = Kopi.all
  end

  def create

  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private
    def customer_params
      params.require(:customer).permit(:name, :kopi_ids => [] )
    end

end