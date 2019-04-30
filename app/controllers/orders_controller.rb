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

  def create
    @order = Order.new(post_params)

    @order.save
    redirect_to @order
  end

  def edit
    @order = Order.find(params[:id])
    @kopis = Kopi.all
  end

  def update
    @order = Order.find(params[:id])

    @order.update(post_params)
    redirect_to @order
  end

  def destroy
    @order = Order.find(params[:id])

    @order.destroy
    redirect_to root_path
  end

private
  def post_params
    params.require(:order).permit(:weight, :kopi_id)
  end

end