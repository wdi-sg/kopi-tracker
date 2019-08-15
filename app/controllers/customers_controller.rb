class CustomersController < ApplicationController
    def new
    @kopis = Kopi.all
  end

  def create
    puts "creating customer"
    @customer = Customer.new(customer_params)
    puts @customer
    @customer.save
    redirect_to @customer
  end

  def show
    # deal with the case that we are trying to get a customer for a kopi that doesn't exist

    @customer = Customer.find(params[:id])

    # if params[:kopi_id].to_i != @customer.kopi.id
    #   # do something
    # end
  end

  def index

    if params.has_key?(:sort)
      if(params[:sort] == "asc" )
          @customers = Customer.all.joins(:customers_kopis).group(:customer_id,:id).order('count asc').select("customers.id,customers.name,customer_id,count(customer_id) as count")
      else
          @customers = Customer.all.joins(:customers_kopis).group(:customer_id,:id).order('count desc').select("customers.id,customers.name,customer_id,count(customer_id) as count")
      end
    elsif params.has_key?(:kopi_id)
    # if the request is from a nested route, get a subset of customers

      # get all the customers for a specific kopi
      # @customers = customer.kopis.where(kopi_ids: params[:kopi_id] )
      @customers = Kopi.find( params[:kopi_id] ).customers
    else
      # get all customers
      @customers = Customer.all
    end
  end

  private
    def customer_params
      params.require(:customer).permit(:name, :kopi_ids => [])
    end
end