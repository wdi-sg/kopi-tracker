class KopisController < ApplicationController
    before_action :authenticate_user!, :except => [ :show, :index ]
    def index
        @kopis = Kopi.all
        if params.has_key?(:sort)
            if(params[:sort] == "asc" )
                @kopis = @kopis.sort{|a,b| b.customers.length <=> a.customers.length}
            else
                @kopis = @kopis.sort{|a,b| a.customers.length <=> b.customers.length}
            end
        else
            @kopis
        end
    end

    def new
        @kopi = Kopi.new
        @roasts = Roast.all
        @origins = Origin.all
    end

    def create
        @kopi = Kopi.new(kopi_params)

        if @kopi.save
            redirect_to @kopi
        else
            render 'new'
        end
    end

    def show
        @kopi = Kopi.find(params[:id])
    end

    def edit
        @kopi = Kopi.find(params[:id])
        @roasts = Roast.all
        @origins = Origin.all
    end


    def update
        @kopi = Kopi.find(params[:id])

        if @kopi.update(kopi_params)
            redirect_to @kopi
        else
            render 'edit'
        end
    end

    def destroy
        @kopi = Kopi.find(params[:id])
        @kopi.destroy

        redirect_to kopis_path
    end
    private
      def kopi_params
        params.require(:kopi).permit(:name, :origin_id,:roast_id,:price_per_pound)
      end
end
