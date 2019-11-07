class KopisController < ApplicationController

  def index

    if params.has_key?(:origin_id)

      @kopis = Kopi.where(origin_id: params[:origin_id] )
    else

      @kopis = Kopi.all
    end
end

  def new
    @kopis =Kopi.new
    @kopis = Kopi.all
    @origins = Origin.all
    @customers = Customer.all
  end

  def create
    @kopi = Kopi.new(kopi_params)

    @kopi.save
    redirect_to @kopi
  end

  def show

    @kopi = Kopi.find(params[:id])

    if params[:origin_id].to_i != @kopi.origin.id
      # do something
    end
  end

  private

  def kopi_params
    params.require(:kopi).permit(:name, :roastedness, :origin_id)
  end
end