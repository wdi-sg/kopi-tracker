class OriginsController < ApplicationController

  before_action :authenticate_user!, :except => [ :show, :index ]

  def index
      @origins = Origin.all
      @kopis = Kopi.all
  end

  def new
  end

  def create
    @origin = Origin.new(origin_params)
    @origin.user = current_user

    if @origin.save
      redirect_to @origin
    else
      render 'new'
    end
  end

  def show
    @origin = Origin.find(params[:id])
  end

  def edit
    @origin = Origin.find(params[:id])
    @origin.user = current_user
  end

  def update
    @origin = Origin.find(params[:id])

    @origin.update(origin_params)
    redirect_to @origin
  end

  def destroy
    @origin = Origin.find(params[:id])
    @origin.destroy

    redirect_to root_path
  end

private

  def origin_params
    params.require(:origin).permit(:location, :phone, :user_id)
  end

end