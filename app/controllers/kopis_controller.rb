class KopisController < ApplicationController
before_action :authenticate_user!, :except => [ :show, :index ]
 
     def index
      @kopis = Kopi.order(id: :asc)
  end


  def show
      @kopi = Kopi.find(params[:id])
      @kopi_farm = KopiFarm.find(@kopi.kopi_farm.id)
  end

  def new
      @kopi_farms = KopiFarm.all.map{|farm| [farm.location, farm.id]}
      @roasts = Roast.all.map{|roast| [roast.name, roast.id]}
  end

  def edit

  end

  def create
      @kopi = Kopi.new(kopi_params)
      @kopi.user = current_user

      if @kopi.save
            redirect_to @kopi
      else
            p @kopi.errors
            redirect_to new_kopi_path
      end
  end

  def update
  end

  def destroy
  end

end

private
  def kopi_params
    params.require(:kopi).permit(:name, :kopi_farm_id, :roast_id)
  end