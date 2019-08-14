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
    @order = Order.find(params[:id])
    @kopis = Kopi.all
  end

  def create
    @order = Order.new(order_params)
    @kopi = Kopi.find(@order.kopi_id)
    puts @kopi
    puts @order
    @order.sale = @kopi.pricePerPound * @order.weight

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

end

private
  def order_params
    params.require(:order).permit(:id, :weight, :sale, :kopi_id)
  end