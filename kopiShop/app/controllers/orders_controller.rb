class OrdersController < ApplicationController

  before_action :authenticate_user!, :except => [ :show, :index ]

  def index
    @orders = Order.all
    @user = current_user
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

    @order.user = current_user

    @kopi = Kopi.find(@order.kopi_id)
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
    params.require(:order).permit(:weight, :kopi_id)
  end