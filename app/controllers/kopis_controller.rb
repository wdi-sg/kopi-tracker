class KopisController < ApplicationController
before_action :authenticate_user!, :except => [ :show, :index ]
  def index
    @kopi = Kopi.all
  end
  def show
    @kopi = Kopi.find(params[:id])
  end

  def new
  end

  def edit
     @kopi = Kopi.find(params[:id])
  end

  def create

  end

  def update
      @kopi = Kopi.find(params[:id])
      @kopi.update(kopi_params)
      redirect_to @kopi
  end

  def destroy
  end
  private
    def kopi_params
      params.require(:kopi).permit(:name, :orgin_id,:roast_id)
    end
end