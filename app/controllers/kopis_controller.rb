class KopisController < ApplicationController

    def index
        @kopis = Kopi.all
    end

    def new

    end

    def create

    end

    def show

    end

    private

    def kopi_params
        params.require(:kopi).permit(:name)
    end




end