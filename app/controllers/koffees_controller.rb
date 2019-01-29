class KoffeesController < ApplicationController
  def index
    
  # test to see if we are at /parks/:id/rangers or /rangers
  if params.has_key?(:koffee_id)
    # get all the rangers for a specific park
    @koffees = Koffee.where(koffee_id: params[:koffee_id] )
  else
    # get all rangers
    @koffees = Koffee.all
  end
end

  def new
    @origins = Origin.all  #When adding new coffees, link all the origins 
  end

  def create
    @koffee = Koffee.new(koffee_params)

    @koffee.save
    redirect_to @koffee
  end

  def show
    @koffee = Koffee.find(params[:id])
    redirect_to @koffee
  end

  def edit
    @koffee = Koffee.find(params[:id])
    redirect_to @koffee
  end

  def update
    @koffee = Koffee.find(params[:id])
    @koffee.update(koffee_params)
    redirect_to @koffee
  end

  def destroy
    @koffee = Koffee.find(params[:id])
    @koffee.destroy
    redirect_to koffee_path
  end

private

  def koffee_params
    params.require(:koffee).permit(:name, :roast, :origin_id, :customer_id => [])
  end
end