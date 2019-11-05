class OrdersController < ApplicationController
    before_action :authenticate_user!, :except => [ :show, :index  ]

    def index
        @orders = Order.all
        @kopi = Kopi.all
        @user = current_user
        
    end

    def new
        @kopis = Kopi.all
    end

    def create
        @order = Order.new(order_params)
        @order.user = current_user
        if @order.save
         redirect_to @order
        else
        end
        
    end

    def show
    @order = Order.find(params[:id])
    @kopi = Kopi.where(id: @order.kopi_id)
    end

    private

    def order_params
    params.require(:order).permit(:weight, :kopi_id, :user_id)
    end
end
