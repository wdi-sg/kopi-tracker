class KopisController < ApplicationController
  def index
  end

  def show
        # deal with the case that we are trying to get a ranger for a park that doesn't exist

    @kopi = Kopi.find(params[:id])

    if params[:farm_id].to_i != @kopi.farm.id
      # do something
      @farm = Farm.find(@kopi.farm.id)
    end
  end

  def new
    @farms = Farm.all
  end

  def edit
  end

  def create
    @kopi = Kopi.new(kopi_params)

    @kopi.save
    redirect_to @kopi
  end

  def update
  end

  def destroy
  end

private

  def kopi_params
    params.require(:kopi).permit(:name, :roast, :origin, :farm_id)
  end

end