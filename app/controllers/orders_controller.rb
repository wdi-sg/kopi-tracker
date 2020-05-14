class OrdersController < ApplicationController
    before_action :authenticate_user!, :except => [ :show, :index ]

    def index
        @orders = Order.all.order(:id)
    end
  
    def show
        @order = Order.find(params[:id])

    end
  
    def new
        @kopis = Kopi.all
        @origins = Origin.all
        @roasts = Roast.all
  
      end
  
    def edit
    end
  
    def create
        @order = Order.new(order_params)
    
        @order.save
        redirect_to @order
      end
  
    def update
    end
  
    def destroy
    end

    private
  
    def order_params
    params.require(:order).permit(:kopi_id, :weight)
    end

  end
