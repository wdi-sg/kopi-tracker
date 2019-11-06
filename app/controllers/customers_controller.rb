class CustomersController < ApplicationController
    def new
        @kopis = Kopi.all
    end
    def index
        @customers = Customer.all
        puts @customers[1].name
       
    end

    def create
        @customer = Customer.new(customer_params)
        @customer.save
      
       redirect_to @customer
    end

    def show
        @customer = Customer.find(params[:id])
    end

    def sort
        @customers = Customer.all
        order = params[:order]
        if order == "desc"
            @customers = @customers.sort_by {|customer| customer.kopis.length}.reverse

        else
            @customers = @customers.sort_by {|customer| customer.kopis.length}
        end

        render :index
    end
    private

    def customer_params

        params.require(:customer).permit(:name, :kopi_ids => [])

    end
end
