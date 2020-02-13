class KopisController < ApplicationController
  before_action :authenticate_user!, :except => [ :show]
  
  def index
    @kopis = Kopi.all
    @roasts = Roast.all
   
    end
  

  def new
    @origins = Origin.all
  end

  def create
    if current_user.try(:staff?)
      @kopi = Kopi.new(kopi_params)
      @kopi.save
      redirect_to @kopi
    else
      redirect_to index
    end
  end

  def show
    @kopi = Kopi.find(params[:id])
  end

  def edit
    @kopi = Kopi.find(params[:id])
    @origins = Origin.all
    @roasts = Roast.all
  end

  def update
    if current_user.try(:admin?)
      @kopi = Kopi.find(params[:id])
      @kopi.update(kopi_params)
      redirect_to @kopi
    else
      redirect_to '/'
    end
  end

  def destroy
    if current_user.try(:admin?)
    @kopi = Kopi.find(params[:id])
    @kopi.destroy
    redirect_to @kopi
  else
    redirect_to '/'
  end
  end


private

def kopi_params
  params.require(:kopi).permit(:name, :roast, :origin, :customer_ids => [])
end

end 