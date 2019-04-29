class OrdersController < ApplicationController
  def index
    @orders = order.all
  end

  def show
    @order = order.find(params[:id])
  end

  def new
    @kopis = Kopi.all
  end

  def create
    @order = order.new(post_params)

    @order.save
    redirect_to @order
  end

  def edit
    @order = order.find(params[:id])
    @roasts = Roast.all
    @origins = Origin.all
  end

  def update
    @order = order.find(params[:id])

    @order.update(post_params)
    redirect_to @order
  end

  def destroy
    @order = order.find(params[:id])

    @order.destroy
    redirect_to root_path
  end

private
  def post_params
    params.require(:order).permit(:weight, :kopi_id)
  end

end