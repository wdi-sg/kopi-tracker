class ReportsController < ApplicationController
    before_action :authenticate_user!
    def index
        if current_user.try(:admin?)
            @orders = Order.all
            @filtered_orders = @orders.select{|x|x.created_at.in_time_zone('Singapore')>Time.now.strftime("%d")}
        else
            redirect_to "/report/onlyadmin"
        end
    end

    def kopi
        if current_user.try(:admin?)
            @kopis = Kopi.all
        else
            redirect_to "onlyadmin"
        end
    end

    def origin
        if current_user.try(:admin?)
            @origins = Origin.all
            @orders = Order.all.select{|x|x.created_at.in_time_zone('Singapore')>Time.now.strftime("%d")}
        else
            redirect_to "onlyadmin"
        end
    end

    def onlyadmin

    end
end
