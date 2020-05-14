class KopisController < ApplicationController

  before_action :authenticate_user!, :except => [ :show, :index ]

  def index
    @kopi = Kopi.all
  end

  def new
  end

  def create
    @kopi = Kopi.new(kopi_params)

    @kopi.save
    redirect_to @kopi
  end

  def show
    @kopi = Kopi.find(params[:id])
  end

  def destroy
  @kopi = Kopi.find(params[:id])
  @kopi.destroy

  redirect_to root_path
  end
  
private

  def kopi_params
    params.require(:kopi).permit(:name)
  end

end