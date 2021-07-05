class OrdersController < ApplicationController
  def index
    # @orders = order.all
    if params.has_key?(:id)
      # get all the rangers for a specific park
      @orders = Order.where(id: params[:id] )
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
    redirect_to action: "index", id: @order.id
  end

  private
  def order_params
    params.require(:order).permit(:weight, :coffee_id)
  end
end