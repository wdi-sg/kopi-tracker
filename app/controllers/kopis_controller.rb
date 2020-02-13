class KopisController < ApplicationController
  before_action :authenticate_user!, :except => [ :show]

  def index
    @kopi = Kopi.scoped
  end

  def new

  end

  def show
    @kopi = Kopi.find(params[:id])
    @customers = @kopi.customers
  end

  def create

    @kopi = Kopi.new(kopi_params)
    @kopi.user = current_user
    @kopi.save
    
    redirect_to '/kopis/new'
  end

  def update
    @kopi = Kopi.find(params[:id])
  end

  def edit
    @kopi = Kopi.find(params[:id])
  end

  def destroy
    @kopi = Kopi.find(params[:id])
  end

  private

  def kopi_params
    params.require(:kopi).permit(:name, :roast_id,  :pound_price, :origin_id)
  end
end
