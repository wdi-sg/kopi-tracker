class OrdersController < ApplicationController
  def index
    @orders = Order.all
    @kopis = Kopi.all
  end
  def new
    @kopis = Kopi.all
  end
  def create
    puts order_params
    @order = Order.new(order_params)
    @order.save
    redirect_to @order
  end
  def show
    @order = Order.find(params[:id])
    @kopis = Kopi.all
    @farms = Farm.all
  end

  private
  def order_params
    params.require(:order).permit(:kopi_id, :weight, :price)
  end

end
