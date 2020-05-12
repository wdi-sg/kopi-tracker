class RoastsController < ApplicationController
before_action :authenticate_user!, :except => [ :show, :index ]
 
     def index
  end


  def show
  end

  def new
  end

  def edit

  end

  def create
      @roast = Roast.new(roast_params)
      @roast.save
      redirect_to new_kopi_path
  end

  def update
  end

  def destroy
  end

end

private
  def roast_params
    params.require(:roast).permit(:name)
  end