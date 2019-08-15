class CustomersController < ApplicationController
    def index
        if params.has_key?(:sort)
            if(params[:sort] == "asc" )
                @customers = Customer.all.joins(:customers_kopis).group(:customer_id,:id).order('count asc').select("customers.id,customers.name,customer_id,count(customer_id) as count")
            else
                @customers = Customer.all.joins(:customers_kopis).group(:customer_id,:id).order('count desc').select("customers.id,customers.name,customer_id,count(customer_id) as count")
            end
        else
            @customers = Customer.all
            p @customers
        end
    end

    def new
        @customer = Customer.new
        @kopis = Kopi.all
    end

    def create
        @customer = Customer.new(customer_params)

        if @customer.save
            redirect_to @customer
        else
            render 'new'
        end
    end

    def show
        @customer = Customer.find(params[:id])
    end

    def edit
        @customer = Customer.find(params[:id])
        @kopis = Kopi.all
    end


    def update
        @customer = Customer.find(params[:id])

        if @customer.update(customer_params)
            redirect_to @customer
        else
            render 'edit'
        end
    end

    def destroy
        @customer = Customer.find(params[:id])
        @customer.destroy

        redirect_to customers_path
    end
    private
      def customer_params
        params.require(:customer).permit(:name,:kopi_ids=>[])
      end
end
