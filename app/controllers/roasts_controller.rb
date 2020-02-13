class RoastsController < ApplicationController
before_action :authenticate_user!, :except => [ :show, :index ]
  def index
    @roast = Roast.all
  end

  def new
    if !current_user.admin?
      render plain: 'Not authorized!'
    end
  end

  def show
    roast_name = params[:name];
    @roast = Roast.find_by(name: roast_name)
  end

  def edit
    if current_user.admin?
     @roast = Roast.find(params[:id])
    else
        render plain: 'Not authorized!'
    end
  end

  def create
    if current_user.admin?
    @roast = Roast.new(roast_params)
    @roast.save
    redirect_to @roast
    else
        render plain: 'Not authorized!'
    end
  end

  def update
     if current_user.admin?
      @roast = Roast.find(params[:id])
      @roast.update(roast_params)
      redirect_to @roast
      else
        render plain: 'Not authorized!'
      end
  end

  # def destroy
  #    if current_user.admin?
  #   @roast = Roast.find(params[:id])
  #   @roast.destroy
  #   redirect_to roasts_path
  #    else
  #       render plain: 'Not authorized!'
  #   end
  # end

  private
    def roast_params
      params.require(:roast).permit(:name)
    end
end