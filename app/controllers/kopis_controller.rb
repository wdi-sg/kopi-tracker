class KopisController < ApplicationController

    before_action :authenticate_user!, :except => [ :show, :index ]

    def index
        @kopis = Kopi.all
        @orders = Order.all
        @customers = Customer.all
        p @customers.inspect
    end

    def new
        @roasts = Roast.all
        @farms = Farm.all
    end

    def create
        @kopi = Kopi.new(kopi_params)

        @kopi.save
        redirect_to @kopi
    end

    def show
        @stocks = Stock.where(kopi_id: params[:id]).select(:customer_id).distinct
        @customers = Customer.all
        @kopiName = Kopi.find(params[:id]).name
        p @stocks.inspect

    end


    def roasts_show
        @id = Roast.find(params[:id]).name
        @kopis = Roast.find(params[:id]).kopi
        p ('**********************')
        p @kopis.inspect
    end

    def roasts_select
        @roasts = Roast.all
    end

    def farms_show
        @id = Farm.find(params[:id]).origin
        @kopis = Farm.find(params[:id]).kopi
        p @kopis.inspect
    end

    def farms_select
        @farms = Farm.all
    end

    private

        def kopi_params
            params.require(:kopi).permit(:name, :roast_id, :farm_id, :price)
        end



end
