class CustomersController < ApplicationController

    def new
    end

    def create
        @customer = Customer.new(customer_params)

        @customer.save
        redirect_to @customer
    end

    def show
        @customer = Customer.find(params[:id])
        @kopis = Kopi.all
        @stocks = Stock.where(customer_id: params[:id])
        @stocks = @stocks.group(:kopi_id).sum(:quantity)
        
        @customerName = Customer.find(params[:id]).name

    end

    private

        def customer_params
            params.require(:customer).permit(:name)
        end


end
