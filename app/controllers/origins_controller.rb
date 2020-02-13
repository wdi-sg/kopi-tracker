class OriginsController < ApplicationController
before_action :authenticate_user!, :except => [ :show, :index ]
  def index
    @origin = Origin.all
  end

  def new
    if !current_user.admin?
      render plain: 'Not authorized!'
    end
  end

  def show
    @origin = Origin.find(params[:id])
  end

  def edit
    if current_user.admin?
     @origin = Origin.find(params[:id])
    else
        render plain: 'Not authorized!'
    end
  end

  def create
    if current_user.admin?
    @origin = Origin.new(origin_params)
    @origin.save
    redirect_to @origin
    else
        render plain: 'Not authorized!'
    end
  end

  def update
     if current_user.admin?
      @origin = Origin.find(params[:id])
      @origin.update(origin_params)
      redirect_to @origin
      else
        render plain: 'Not authorized!'
      end
  end

  # def destroy
  #    if current_user.admin?
  #   @origin = Origin.find(params[:id])
  #   @origin.destroy
  #   redirect_to origins_path
  #    else
  #       render plain: 'Not authorized!'
  #   end
  # end

  private
    def origin_params
      params.require(:origin).permit(:location, :phone)
    end
end