class CustomersController < ApplicationController

    def index

    end

    def new

    end

    def create

    end

    def show

    end

private

    def farm_params
        params.require(:customer).permit(:kopis_ids => [])
    end




end