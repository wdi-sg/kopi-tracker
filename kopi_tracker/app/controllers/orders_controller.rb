class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @kopis = Kopi.all
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      redirect_to @order
    else
      render 'new'
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  def edit
  end

  private
    def order_params
      params.require(:order).permit(:weight, :kopi_id)
    end
end