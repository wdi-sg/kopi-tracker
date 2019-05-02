class KopisController < ApplicationController

  def index
    # if params.has_key?(:roast_id) && params.has_key?(:farm_id) 
    #   @kopis = Kopi.where(roast_id: params[:roast_id], farm_id: params[:farm_id]  )
    if params.has_key?(:roast_id) 
      @kopis = Kopi.where(roast_id: params[:roast_id])
    elsif params.has_key?(:farm_id) 
      @kopis = Kopi.where(farm_id: params[:farm_id])
    else
      @kopis = Kopi.all
    end
  end

  def new
    @roasts = Roast.all
    @farms = Farm.all
  end

  def create
    p kopi_params
    @kopi = Kopi.new(kopi_params)

    @kopi.save
    redirect_to kopis_path
  end

  def show
    # deal with the case that we are trying to get a kopi for a roast that doesn't exist

    @kopi = Kopi.where(:id => params[:id])

    # if params[:roast_id].to_i != @kopi.roast.id
    #   # do something
    #   puts "Roast ID error"
    # end

    # if params[:farm_id].to_i != @kopi.farm.id
    #   # do something
    #   puts "Farm ID error"
    # end
  end

  def edit
    @roasts = Roast.all
    @farms = Farm.all
    @kopi = Kopi.find(params[:id])
  end

  def update
    @kopi = Kopi.find(params[:id])

    @kopi.update(kopi_params)
    redirect_to @kopi
  end

  def destroy
    @kopi = Kopi.find(params[:id])
    @kopi.destroy

    redirect_to kopis_path
  end

private

  def kopi_params
    params.require(:kopi).permit(:name, :roast_id, :farm_id, :customer_ids => [])
  end
end