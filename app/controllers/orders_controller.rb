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

  def edit
    @kopis = Kopi.all
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new(order_params)

    @order.save
    redirect_to @order
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
    params.require(:order).permit(:kopi_id, :weight_kg)
  end
end