class OrdersController < ApplicationController
    before_action :authenticate_user!, :except => [ :show, :index ]

    def index
        @orders = Order.all
    end
  
    def show
        @order = Order.find(params[:id])

    end
  
    def new
    end
  
    def edit
    end
  
    def create
    end
  
    def update
    end
  
    def destroy
    end
  end
