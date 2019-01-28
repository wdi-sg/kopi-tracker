class OrdersController < ApplicationController
  def index
    # @orders = order.all
    if params.has_key?(:order_id)
      # get all the rangers for a specific park
      @orders = Order.where(order_id: params[:order_id] )
    else
      # get all rangers
      @orders = Order.all
    end
  end

  def new
    @coffees = Coffee.all
  end

  def create
    @order = Order.new(order_params)
    @order.save
    redirect_to root_path
  end

  private
  def order_params
    params.require(:order).permit(:weight, :coffee_id)
  end
end