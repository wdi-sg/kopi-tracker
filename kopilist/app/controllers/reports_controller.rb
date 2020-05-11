class ReportsController < ApplicationController
  def index

    @combines=Kopi.joins(:order).select("*")
    @sum = @combines.sum(:price)
    @sale = @combines.count(:all)
    @totalEarning= @combines.map {|combine| combine.pound*combine.price}.sum
    puts @totalEarning
    @orders = Order.all
    puts @orders.ids[0]
    @kopis = Kopi.where(id: @orders.ids)
    puts @kopis

  end

  def show

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