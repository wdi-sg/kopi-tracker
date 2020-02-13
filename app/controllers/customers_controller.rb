class CustomersController < ApplicationController

    def index
        if current_user.try(:admin?)
            @customers = Customer.all
        else
            rediect_to kopis_path
        end
    end

    def new

    end

    def create

    end

    def show
        if current_user.try(:admin?)
            @customer = Customer.find(params[:id])
        elsif current_user.id == params[:id]
            @customer = Customer.find(params[:id])
        else
            redirect_to kopis_path
        end
    end

private

    def farm_params
        params.require(:customer).permit(:kopis_ids => [])
    end




end