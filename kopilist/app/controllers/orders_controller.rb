class OrdersController < ApplicationController
  def index
    @orders = Order.where(user_id: current_user.id)
 end

  def show
        # deal with the case that we are trying to get a ranger for a park that doesn't exist
            @order = Order.find(params[:id])

    if params[:kopi_id].to_i != @order.kopi.id
      # do something
      @kopi = Kopi.find(@order.kopi.id)
    end



  end

  def new

    @kopis = Kopi.all
  end

  def edit
    @kopis = Kopi.all
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
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

  redirect_to orders_path
  end

private

  def order_params
    params.require(:order).permit(:pound,  :kopi_id, )
  end

end