class ReportsController < ApplicationController

  def index
    @orders = Order.all

  end

end