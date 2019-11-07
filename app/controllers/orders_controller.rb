class OrdersController < ApplicationController

  def new
    @kopis = Kopi.all
  end

  def create
    @order = Order.new(order_params)

    @order.save
    redirect_to @order
  end

  def show
    # deal with the case that we are trying to get a ranger for a park that doesn't exist

    @order = Order.find(params[:id])

    if params[:kopi_id].to_i != @order.kopi.id
      # do something
    end
  end

private

  def order_params
    params.require(:order).permit(:weight, :kopi_id)
  end
end