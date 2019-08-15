class StocksController < ApplicationController

    def index
        @stocks = Stock.all
        @customers = Customer.all
        @kopis = Kopi.all
        render :index
    end

    def show
        @stock = Stock.find(params[:id])
    end

    def sort
        @stocks = Stock.all
        conds = params[:conds]
        order = params[:order]
        if order == "asc"
            @texts = @texts.sort_by {|a| a[conds]}
        else
            @texts = @texts.sort_by {|a| a[conds]}.reverse
        end
        render :index
    end

    def new
        @customers = Customer.all
        @kopis = Kopi.all
    end

    def edit
        @stock = Stock.find(params[:id])
    end

    def create
        @stock = Stock.new(stock_params)
        @stock.save
        @stocks = Stock.all
        render :index
    end

    def update
        @text = Stock.find(params[:id])
        @text.update(stock_params)
        redirect_to @stock
    end

    def destroy
        @stock = Stock.find(params[:id])
        @stock.destroy
        @stocks = Stock.all
        render :index
    end

    private
        def stock_params
            params.require(:stock).permit(:customer_id, :kopi_id, :quantity)
        end

end
