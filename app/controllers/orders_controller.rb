class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @farms = Farm.all
    @roasts = Roast.all
  end

  def edit
    @order = Order.find(params[:id])
    @farms = Farm.all
    @roasts = Roast.all
  end

  def create
    @order = Order.new(kopi_params)

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
    params.require(:order).permit(:name, :farm_id, :roast_id)
  end