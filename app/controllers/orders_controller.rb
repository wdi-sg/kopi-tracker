class OrdersController < ApplicationController

  before_action :authenticate_user!

  def authenticate_admin!
    unless current_user.admin?
      redirect_to orders_path
    end
  end

  before_action :authenticate_admin!, :except => [ :index, :new, :create, :destroy ]



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


  def destroy

    @order = Order.find(params[:id])
    @order.destroy

    redirect_to @order

  end


private

  def order_params
    params.require(:order).permit(:kopi_id, :weight, :user_id)
  end

end