class ReportController < ApplicationController
  def index
    # @orders = Order.select("*").joins(:kopi).where(created_at: Date.today.all_day)

    @orders = Order.select("*").joins(:kopi)

    @total_sales = @orders.reduce(0) {|sum, order| sum + order.weight * order.price_per_pound}


    @total_sales_by_kopi = Kopi.all.map do |kopi|
      {name: kopi[:name], total_sales: @orders.filter{|order| order.kopi_id == kopi.id}.reduce(0) {|sum, order| sum + order.weight * order.price_per_pound}}
      end

      @orders_by_origin = Kopi.select("*").joins(:orders, :origin)

      @total_sales_by_origin = Origin.all.map do |origin|
        {location: origin[:location], total_sales: @orders_by_origin.filter{|order| order.origin_id == origin.id}.reduce(0) {|sum, order| sum + order.weight * order.price_per_pound}}
        end

    end


    # @sales = @orders.each do |order|
    #   order[:weight] *
    # end
end