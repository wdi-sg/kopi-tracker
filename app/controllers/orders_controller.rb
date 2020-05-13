class OrdersController < ApplicationController

  before_action :authenticate_user!

  def index
    if current_user.id == 2
      @orders = Order.all
      p "USER IS ADMIN!!!!!"
    else
      @orders = Order.all.where(user_id: current_user.id)
      p "USER IS NORMAL USER!!!!!"
    end
  end

  def new
    @kopis = Kopi.all
  end

  def create
    @order = Order.new(order_params)

    @order.user = current_user

    @order.save
    # redirect_to @order
    redirect_to orders_path
  end

  def show
    @order = Order.find(params[:id])
  end

  # def edit
  #   @kopi = Kopi.find(params[:id])
  #   @origins = Origin.all
  #   @roasts = Roast.all
  # end

  # def update
  #   @origins = Origin.all
  #   @roasts = Roast.all

  #   @kopi = Kopi.find(params[:id])

  #   @kopi.update(kopi_params)

  #   redirect_to @kopi
  # end

  # def destroy
  #   @kopi = Kopi.find(params[:id])

  #   @kopi.destroy

  #   redirect_to root_path
  # end




private

  def order_params
    params.require(:order).permit(:kopi_id, :weight)
  end

end