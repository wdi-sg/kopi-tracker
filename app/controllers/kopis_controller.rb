class KopisController < ApplicationController

before_action :authenticate_user!, :except => [ :show, :index ]

def index
 @kopis = Kopi.all()
end


  def new
    @roasts = Roast.all
    @origins = Origin.all
  end

  def create
      @kopi = Kopi.new(kopi_params)

      @kopi.user = current_user

      @kopi.save
      redirect_to @kopi
  end

  def edit
    @kopi = Kopi.find(params[:id])
    @roasts = Roast.all
    @origins = Origin.all
  end

  def show
    @kopi = Kopi.find(params[:id])
    @roast = Roast.find(@kopi.roast_id)
    @origin = Origin.find(@kopi.origin_id)

    @customers = Kopi.find( params[:id] ).customer

    if params.has_key?(:sort)
        if(params[:sort] == "desc" )
        @customers = Kopi.find( params[:id] ).customer.order(created_at: :desc)

        else
            @customers = Kopi.find( params[:id] ).customer.order(created_at: :asc)
        end

    end
  end

  def update
      @kopi = Kopi.find(params[:id])

      @kopi.update(kopi_params)
      redirect_to @kopi
  end

private

  def kopi_params
    params.require(:kopi).permit(:name, :roast_id, :origin_id)
  end
end