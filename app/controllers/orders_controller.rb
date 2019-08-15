class OrdersController < ApplicationController
  before_action :authenticate_user!
  def index
    if (current_user.admin)
      @orders = Order.all
    else
      @orders = Order.all.where(user_id: current_user.id)
    end
    p @orders
  end

  def show
    @order = Order.find(params[:id])
    if @order.user_id != current_user.id
      redirect_to orders_path
    end
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

    @order.total_price = @order.kopi.price * @order.weight

    @order.user_id = current_user.id

    @order.save

    redirect_to @order
  end

  def update
    @order = Order.find(params[:id])

    kopi_hash = order_params

    kopi = Kopi.find(kopi_hash[:kopi_id])

    kopi_hash["total_price"] = kopi[:price].to_f * kopi_hash[:weight].to_f

    @order.update(kopi_hash)

    redirect_to @order
  end

  def destroy
    @order = Order.find(params[:id])

    @order.destroy

    redirect_to orders_path
  end

  private
  def order_params
    params.require(:order).permit(:kopi_id, :weight)
  end
end