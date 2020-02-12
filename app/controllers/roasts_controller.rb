class RoastsController < ApplicationController
  before_action :check_admin
  # , :except => [ :show, :index ]

  def check_admin
    if authenticate_user! && current_user.admin
      return true
    else
      redirect_to "/kopis/new"
    end
  end

  def index
      @roasts = Roast.all.order("created_at ASC")
  end

  def new
  end

  def show
    @roast = Roast.find(params[:id])
  end

  def create
    puts roast_params
    @roast = Roast.new(roast_params)
    @roast.save
    redirect_to "/roasts"
  end

  def update
    @roast = Roast.find(params[:id])
    @roast.update(roast_params)
    redirect_to @roast
  end

  def edit
    @roast = Roast.find(params[:id])
  end

  def destroy
    @roast = Roast.find(params[:id])
    @roast.destroy

    redirect_to "/roasts"
  end

  private

  def roast_params
    params.require(:roast).permit(:name, :roast_id)
  end
end
