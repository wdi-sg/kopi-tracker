class OrdersController < ApplicationController
  # before_action :authenticate_user!, :except => [ :show, :index ]
  # before_action :check_admin, :only => [ :new ]

  def admin
    current_user.update_attribute :admin, true
    redirect_to orders_path
  end

  def index
    @orders = Order.all
    puts @orders[0].kopi.name
    # @kopis = Kopi.all
    # @orders = Order.joins("INNER JOIN kopis ON kopis.id = orders.kopi_id")
  end

  def new
    @orders = Order.all
    @kopis = Kopi.all
  end

  def show
    @order = Order.find(params[:id])
    @kopi = Kopi.find(@order.kopi_id)
    @user = User.find(@order.user_id)
  end

  def create
    @params = order_params
    @user = current_user.id


    @order = Order.new(:weight => @params[:weight].to_i, :kopi_id => @params[:kopi_id].to_i, :user_id => @user.to_i)
    @order.save
    redirect_to @order
  end

  private
    def order_params
      params.require(:order).permit(:weight, :kopi_id)
    end

    def check_admin
      unless current_user.admin
        redirect_to root_path, flash.now[:alert] => "You needed admin permissions!"
      end

    end
end