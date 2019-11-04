class KopisController < ApplicationController

    def create
        @kopi = Kopi.new(kopi_params)
        @kopi.save
        redirect_to @kopi
    end


    private 
    def kopi_params
        params.require(:kopi).permit(:name, :roast, :origin)
    end

end
