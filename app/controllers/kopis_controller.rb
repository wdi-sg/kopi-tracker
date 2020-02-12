class KopisController < ApplicationController
  before_action :authenticate_user!, :except => [ :show, :index ]

  def index
    roast_param = params[:roast]
    @roasts = Roast.all
    roast = Roast.where(name: [roast_param])
    if roast_param == nil || roast_param == ""
      @kopis = Kopi.all
    else
      @kopis = Kopi.all.where(roast: roast)
    end
  end

  def show
    @kopi = Kopi.find(params[:id])
  end

  # Display the page to make a new coffee. GET /kopi/new
  def new
    @roasts = Roast.all
    @origins = Origin.all
  end

  def edit
  end

  # POST
  def create
    if current_user.try(:admin?)
      @kopi = Kopi.new(kopi_params)
      @kopi.save
      redirect_to @kopi
    else
      redirect_to index
    end
  end

  def update
    if current_user.try(:admin?)
      #update kopi
    else
      #reject
    end
  end

  def destroy
    if current_user.try(:admin?)
      # delete kopi
    else
      # reject
    end
  end

private

  def kopi_params
    params.require(:kopi).permit(:name, :origin_id, :roast_id, :price_per_kg)
  end
end
