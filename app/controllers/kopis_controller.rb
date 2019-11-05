class KopisController < ApplicationController
  before_action :authenticate_user!, :except => [ :show, :index ]

    def index
          @origins = Origin.all
          @kopis = Kopi.all
          @roasts = Roast.all
          @orders = Order.all
        # end
      end
      

      def show
        # deal with the case that we are trying to get a kopi for a origin that doesn't exist
    
        @kopi = Kopi.find(params[:id])

        if params[:origin_id].to_i != @kopi.origin.id
          # do something
        end
        @roasts = Roast.all
      end

    def new
        @origins = Origin.all
        @roasts = Roast.all
      end
      
      def edit
        @kopi = Kopi.find(params[:id])
        @roasts = Roast.all
        @origins = Origin.all
      end
  
      def create
        @kopi = Kopi.new(kopi_params)
      
        @kopi.user = current_user
      
        if @kopi.save
          redirect_to @kopi
        else
          render 'new'
        end
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
  end

  private
  def kopi_params
    params.require(:kopi).permit(:name, :roast_id, :origin_id)
  end