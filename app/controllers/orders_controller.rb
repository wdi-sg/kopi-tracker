class OrdersController < ApplicationController
    def index
      @orders = Order.all
    end
    
    def show
      @order = Order.find(params[:id])
    end
    
    def new
        @kopis = Kopi.all
    end

    def create
      @order = Order.new(order_params)
      @order.total_price = Kopi.find(order_params[:kopi_id]).price_per_pound.to_f  * order_params[:weight_in_pound].to_f 
    
      @order.save
      redirect_to @order
    end

    def edit
      @order = Order.find(params[:id])
    end
    
    def update
      @order = Order.find(params[:id])
      @order.update(order_params)
      redirect_to @order
    end
    
    def destroy
      @order = Order.find(params[:id])
      @order.destroy
    
      redirect_to root_path
    end
      
    private
    def order_params
        params.require(:order).permit(:weight_in_pound,:total_price, :kopi_id)
    end
      
    end