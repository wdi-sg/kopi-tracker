class ReportsController < ApplicationController
    def index
        @orders = Order.all
        @filtered_orders = @orders.select{|x|x.created_at.in_time_zone('Singapore')>Time.now.strftime("%d")}

    end

    def kopi
        @orders = Order.all.group('kopi_id').select("kopi_id,sum(weight) as weight").order(:kopi_id)
    end

    def origin
        @origins = Origin.all
        @orders = Order.all
    end
end
