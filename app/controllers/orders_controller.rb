class OrdersController < ApplicationController
  def index
    @orders = Order.all

  end

  def new
    @orders = Order.all
    @kopis = Kopi.all
  end

  def create
    @order = Order.new(order_params)
    @order.save

    redirect_to orders_path
  end

  def show
    @order = Order.find(params[:id])
  end

  def edit
    @order = Order.find(params[:id])
    @kopis = Kopi.all
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    @order.save
    redirect_to order_path(@order)
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to orders_path
  end

  private
  def order_params
    params.require(:order).permit(:kopi_id, :weight)
  end
end
