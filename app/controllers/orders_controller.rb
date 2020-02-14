class OrdersController < ApplicationController
before_action :authenticate_user!

  def index
    if user_signed_in?
    @user = current_user
    @orders = Order.all
    else
      redirect_to root_path
    end
  end

  def show
     @order = Order.find(params[:id])
  end

  def new
      @order = Order.all
  end

  def edit
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user

     @order.save
     redirect_to @order
  end

  def update
  end

  def destroy
  end

  private
  def order_params
    params.require(:order).permit(:kopi_id, :roast_id, :weight_in_lbs)
  end

end