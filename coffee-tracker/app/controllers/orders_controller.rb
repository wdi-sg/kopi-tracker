class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def new
    @kopis = Kopi.all
  end

  def create
    # render plain: params[:post].inspect
    @order = Order.new(order_params)

    @order.save
    redirect_to @order

  end

  def show
    @order = Order.find(params[:id])

  end

private

  def order_params
    params.require(:order).permit(:kopi_id, :weight)

  end

end