class OrdersController < ApplicationController
	before_action :authenticate_user!, :except => [ :show, :index ]

  def index
    @orders = Order.all
    @kopis = Kopi.all

    vars = request.query_parameters
    filter_id =  vars['filter']


      if vars['filter']         
        @orders = Order.where(kopi_id: filter_id)

      end 
      # render plain: request.params
    
	end

	def show
	  @order = Order.find(params[:id])
	end

	def new
	  @kopis = Kopi.all
	end

  def edit
  end

  def create
    @order = Order.create(order_params)
    redirect_to @order
  end

	  def update
	  end

	  def destroy
	  end

	 private
	  def order_params
	    params.require(:orders).permit(:kopi_id, :weight)
	  end
end
