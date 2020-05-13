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

       puts request.query_parameters
    sequence = request.query_parameters['sequence']
    type = request.query_parameters['type']
    case type
    when "date"
      puts("I am date")
      @combines = @combines.order(:created_at)
      if sequence == "desc"
        @combines = @combines.reverse
      end

    when "kopi"
      puts("I am kopi")
      @combines = @combines.order(:name)
      if sequence == "desc"
        @combines = @combines.reverse
      end
    end

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