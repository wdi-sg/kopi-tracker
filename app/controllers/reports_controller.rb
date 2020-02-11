class ReportsController < ApplicationController
  def index
    puts "***********************************"
    @orders = Order.where(created_at: Date.today.all_day)
    total = 0
    @orders.each do |order|
      puts "ALSDKNALSDNKSADLAKSDASASDKASDANSLK"
      total += (order.weight * order.kopi.price)
      puts "ALSDKNALSDNKSADLAKSDASASDKASDANSLK"
    end
    @total = total
  end

  def new
  end

  def create
  end

  def show
    @roast = Roast.find(params[:id])
  end

  private

  def roast_params
    params.require(:roast).permit(:name)
  end
end
