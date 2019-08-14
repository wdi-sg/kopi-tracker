class ReportsController < ApplicationController

  def index
    @orders = Order.all

    @kopiGroups = Order.all.group(:kopi_id).select("kopi_id,sum(weight) as weight")
    @kopiGroups.each do |group|
      p group
    end

  end

end