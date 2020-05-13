class KopisController < ApplicationController

  before_action :authenticate_user!, :except => [ :show, :index ]


  def show
        # deal with the case that we are trying to get a ranger for a park that doesn't exist

    @kopi = Kopi.find(params[:id])

    if params[:farm_id].to_i != @kopi.farm.id
      # do something
      @farm = Farm.find(@kopi.farm.id)
    end

    if params[:roast_id].to_i != @kopi.roast.id
      # do something
      @roast = Roast.find(@kopi.roast.id)
    end
  end

  def new
    @farms = Farm.all
    @roasts = Roast.all
  end

  def edit
     @farms = Farm.all
    @roasts = Roast.all
    @kopi = Kopi.find(params[:id])
  end

  def create
    @kopi = Kopi.new(kopi_params)
    @kopi.user = current_user
    @kopi.save
    redirect_to @kopi
  end

  def update

          @kopi = Kopi.find(params[:id])
puts "fjdlkjfldasjfkldasjflkadsjlfkdjasklfjwelqk;asdjfg;lkdsj"
  @kopi.update(kopi_params)
  redirect_to @kopi
  end

  def destroy

          @kopi = Kopi.find(params[:id])
  @kopi.destroy

  redirect_to root_path
  end

private

  def kopi_params
    params.require(:kopi).permit(:name, :origin, :farm_id, :roast_id, :price, :customers_ids => [])
  end

end