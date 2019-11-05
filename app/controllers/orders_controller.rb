class OrdersController < ApplicationController

  before_action :authenticate_user!

  def index
    @order = Order.all.order('id')

  end

  def new

    @kopis = Kopi.all

  end

  def create

    @order = Order.new(order_params)

    @order.user = current_user

    @order.save
    redirect_to @order

  end


  def show
    @order = Order.find(params[:id])
  end


private

  def order_params
    params.require(:order).permit(:kopi_id, :weight, :user_id)
  end

end