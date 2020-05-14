class CustomersController < ApplicationController
    before_action :authenticate_user!, :except => [ :show, :index ]

    def index
        @customers = Customer.all
        @sort = params[:sort]
        if @sort=='stock_asc'
            @customers = Customer.left_joins(:kopis).group(:id).order('COUNT(kopis.id) ASC')
        elsif @sort=='stock_desc'
            @customers = Customer.left_joins(:kopis).group(:id).order('COUNT(kopis.id) DESC')
        end
    end

    def new
        @kopis = Kopi.all
    end

    def create
        @customer = Customer.new(customer_params)
        if @customer.save
            redirect_to @customer
        else
            redirect_to new_customer
        end
    end

    def show
        @customer = Customer.find(params[:id])
    end


    
    private
      def customer_params
        params.require(:customer).permit(:name, :kopi_ids => [])
      end
    end