class KopisController < ApplicationController

before_action :authenticate_user!, :except => [ :show, :index ]

  def index
    if params.has_key?(:origin_id)
      @kopis = Kopi.where(origin_id: params[:origin_id] )
    else
      @kopis = Kopi.all
    end
  end

  def new
    @origins = Origin.all
    @roasts = Roast.all
  end

  def create
    @kopi = Kopi.new(kopi_params)

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

    redirect_to @kopi
  end

private

  def kopi_params
    params.require(:kopi).permit(:name, :origin_id, :roast_id)
  end

end
