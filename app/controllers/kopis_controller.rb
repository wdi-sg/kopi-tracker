class KopisController < ApplicationController
before_action :authenticate_user!

  def index
    if params.has_key?(:origin_id)
    # get all the kopi for a specific origin
    @kopis = Kopi.where(origin_id: params[:origin_id] )
  else
    # get all kopi
    @kopis = Kopi.all
  end
end


  def show
     @kopi = Kopi.find(params[:id])
  end

  def new
     @kopis = Kopi.all
      @roasts = Roast.all
      @origins = Origin.all

  end

  def edit
  end

  def create
    if current_user
      @kopi = Kopi.new(kopi_params)
      @kopi.user = current_user

      puts @kopi.user
      @kopi.save
      redirect_to "/origins/" + @kopi.origin.id.to_s
    end
  end

  def update
  end

  def destroy
  end

  private

  def kopi_params
    params.require(:kopi).permit(:name, :roast_id, :origin_id, :price_per_lbs)
  end

end