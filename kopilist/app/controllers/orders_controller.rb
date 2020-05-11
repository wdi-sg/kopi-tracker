class OrdersController < ApplicationController
  def index
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
  end

  def create
    @order = Order.new(order_params)

    @order.save
    redirect_to @order
  end

  def update
  end

  def destroy
  end

private

  def order_params
    params.require(:order).permit(:pound,  :kopi_id, )
  end

end