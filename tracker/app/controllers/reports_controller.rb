class ReportsController < ApplicationController
  before_action :authenticate_user!
  def totalsales
    @orders = Order.all
    @totalsales = 0
    @orders.each do |order|
      puts order.price
    @totalsales += order.price.to_i
    end
  end
  def kopi
  end
  def origin
  end
end
