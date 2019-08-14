class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
  end

  def new
    @kopis = Kopi.all
  end

  def edit
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new(order_params)

    @order.total_price = @order.kopi.price * @order.weight

    @order.save

    redirect_to @orders
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