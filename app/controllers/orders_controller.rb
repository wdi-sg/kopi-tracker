class OrdersController < ApplicationController

    def index
        @order = Order.all

    end

    def new
        @kopis = Kopi.all
        @orders = Order.all

    end

    def create
        @order = Order.new(order_params)
        @order.customer_id = current_customer.id
        @order.save
        redirect_to @order
    end

    def show
        @order = Order.find(params[:id])

    end


    private 
    def order_params
        params.require(:order).permit(:kopi_id)
    end




end
