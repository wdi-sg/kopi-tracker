class ReportsController < ApplicationController
    def index

            @orders = Order.all
            @filtered_orders = @orders.select{|x|x.created_at.in_time_zone('Singapore')>Time.now.strftime("%d")}


    end
end
