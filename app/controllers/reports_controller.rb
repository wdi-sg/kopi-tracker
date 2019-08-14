class ReportsController < ApplicationController
  def index
    @kopis = Kopi.all
    @origins = Origin.all

    # @ordersToday = Order.where("DATE(created_at) = ?", Date.today)
    @orders_today = Order.where(created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day)
    @total_orders = @orders_today.count
    @total_sales = @orders_today.sum{|order| order[:weight] }
  end

  def kopi
    @kopi = Kopi.find(params[:kopi_id])
    @orders_by_kopi = Order.where(kopi_id: params[:kopi_id])

    @total_orders = @orders_by_kopi.count
    @total_sales = @orders_by_kopi.sum{|order| order[:weight] }
  end

  def origin
    @origin = Origin.find(params[:origin_id])
    @origin_kopis = @origin.kopi
    @orders = [];

    @origin_kopis.each do |kopi|
      @orders_by_kopi = Order.where(kopi_id: kopi.id)
      @orders_by_kopi.each do |order|
        @orders.push(order)
      end
    end

    @total_orders = @orders.count
    @total_sales = @orders.sum{|order| order[:weight] }

  end
end
