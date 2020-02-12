class OrdersController < ApplicationController
  before_action :authenticate_user!
  # , :except => [ :show, :index ]
    
      def index
        @orders = Order.all()
      end
    
      def show

        if params.has_key?(:id)

        @order = Order.find(params[:id])

        else 
        @order =  Order.where(created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day)
        end
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