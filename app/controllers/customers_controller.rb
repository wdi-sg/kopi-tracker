class CustomersController < ApplicationController
    @customers = Customer.all
    def new
        @kopis=Kopi.all
        @customers=Customer.all
    end

    def create
        @customer = Customer.new(customer_params)
        @customer.save
        render plain:"WORRLRKRKSSSS"
    end

    def show
        @customer = Customer.find(params[:id])
        # puts @ranger.inspect
        @kopis = @customer.kopis
        puts @kopis.inspect
    end

end

def customer_params
  params.require(:customer).permit(:name, :park_ids => [])
end