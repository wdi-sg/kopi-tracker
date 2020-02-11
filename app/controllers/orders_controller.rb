class OrdersController < ApplicationController

    
      def index
        @orders = Order.all()
      end
    
      def show
        @order = Order.find(params[:id])
      end
    
      def create
        @order = Order.new(params[:Order])
      end
    
      def update
        @order = Order.find(params[:id])
      end
    
      def edit
        @order = Order.find(params[:id])
      end
    
      def destroy
        @order = Order.find(params[:id])
      end
  
  private
  
    def order_params
      params.require(:park).permit(:weight, :kopi_id)
    end
  
  end