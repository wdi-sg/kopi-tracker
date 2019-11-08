class OriginsController < ApplicationController

  before_action :authenticate_user!, :except => [ :index ]

  def authenticate_admin!
    unless current_user.admin?
      redirect_to origins_path
    end
  end

  before_action :authenticate_admin!, :except => [ :index ]

  def index
    @origin = Origin.all.order('id')
  end

  def new
  end

  def edit

    @origin = Origin.find(params[:id])

  end

  def create
    @origin = Origin.new(origin_params)

    @origin.save
    redirect_to @origin
  end

  def update

    @origin = Origin.find(params[:id])

    @origin.update(origin_params)
    redirect_to @origin

  end


  def show
    @origin = Origin.find(params[:id])
  end


  def destroy

    @origin = Origin.find(params[:id])
    @origin.destroy

    redirect_to @origin

  end


private

  def origin_params
    params.require(:origin).permit(:location, :phone_number)
  end

end