class ReportController < ApplicationController
  def index
    @orders = Order.select("*").joins(:kopi).where(created_at: Date.today.all_day)

    @total_sales = @orders.reduce(0) {|sum, order| sum + order.weight * order.price_per_pound}

    # @sales = @orders.each do |order|
    #   order[:weight] *
    # end
  end
end