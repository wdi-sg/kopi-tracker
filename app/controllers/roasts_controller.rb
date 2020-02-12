class RoastsController < ApplicationController
  def index
    if params.has_key?(:roast_id)
    # get all the kopi of a specific roast
      @kopis = Kopi.where(roast_id: params[:roast_id] )
  else
     @roasts = Roast.all
   end
  end

  def show
     @roast = Roast.find(params[:id])

  end

  def new
  end

  def edit
  end

  def create
    @roast = Roast.new(roasts_params)

    @roast.save
    redirect_to @roast
  end

  def update
  end

  def destroy
  end

  private

  def origin_params
    params.require(:roast).permit(:name)
  end

end