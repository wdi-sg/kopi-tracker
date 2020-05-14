class ReportsController < ApplicationController
    def index
        # @orders = Order.where(created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day)
        @orders = Order.all.order(:id)
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
