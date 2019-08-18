class OrdersController < ApplicationController

    def index
      @orders = Order.all
      @ids = @orders.ids
    end

    def show
      @id = params[:id].to_i
      @orders = Order.where(customer_id: params[:id])
      @kopis = Order.find_by(id: @id).kopis
    end

    def new
      @kopis = Kopi.all
      @id = current_customer.id
    end

    def create

      @order = Order.new(order_params)
      # p @order
      @order.save
      @id = current_customer.id

      redirect_to order_path(@id)
    end

    def edit
      @order = Order.find(params[:id])
      @kopis = Kopi.all
      @id = current_customer.id
    end

    def update
      @order = Order.find(params[:id])
      @order.update(order_params)

      redirect_to order_path(current_customer.id)
    end

    def destroy
      @order = Order.find(params[:id])
      @order.destroy

      redirect_to order_path(current_customer.id)
    end


    private
      def order_params
        params.require(:orders).permit(:name, :customer_id, :kopi_ids => [])
      end
end