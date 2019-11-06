class KopisController < ApplicationController
    before_action :authenticate_user!, :except => [ :show, :index   ]

    def index
    @kopis = Kopi.all 
    @user = current_user
    @kopis.sort_by {|kopi| kopi.customers.length}
    end
    def new
        @roasts = Roast.all
        @origins = Origin.all 
    end

    def create
    @kopi = Kopi.new(kopi_params)
    @kopi.user = current_user
    if @kopi.save
    redirect_to @kopi
    else 
   
    end
    end

    def show
    @kopi = Kopi.find(params[:id])
    @roast = Roast.where(id: @kopi.roast_id)
    @origin = Origin.where(id: @kopi.origin_id)
    end

    def edit
    @kopi = Kopi.find(params[:id])
    @roasts = Roast.all
    @origins = Origin.all 
    end

    def update
    @kopi = Kopi.find(params[:id])
    @kopi.update(kopi_params)
    redirect_to @kopi
    end

    def destroy
        @kopi = Kopi.find(params[:id])
        @kopi.destroy
      
        redirect_to root_path
      end


    def sort
        @kopis = Kopi.all
        order = params[:order]
        if order == "desc"
            @kopis = @kopis.sort_by {|kopi| kopi.customers.length}.reverse

        else
            @kopis = @kopis.sort_by {|kopi| kopi.customers.length}
        end

        render :index
    end

    

    private

    def kopi_params
    params.require(:kopi).permit(:name, :roast_id, :price, :origin_id, :user_id)
    end
end
