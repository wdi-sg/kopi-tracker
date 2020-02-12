class OrdersController < ApplicationController
  before_action :authenticate_user!, :except => [:show, :index]

  def index
    @user = current_user
    @orders = current_user.order
  end

  def new
    @kopis = Kopi.all
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
    puts "***************************************"
    puts @order.inspect
    puts "***************************************"
    @order.save
    redirect_to all_orders_path
  end

  def show
    @order = Order.find(params[:id])
  end

  private

  def order_params
    params.require(:order).permit(:weight, :id, :kopi_id)
  end
end
