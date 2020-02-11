class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
  end

  def create
  end

  def show
    @order = Order.find(params[:id])
  end

end
