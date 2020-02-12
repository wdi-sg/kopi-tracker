class OriginsController < ApplicationController
  before_action :check_if_staff
  def index
    @origins = Origin.all
  end

  def show
    @origin = Origin.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
    if current_user.try(:staff?)
      @origin = Origin.new(origin_params)

      @origin.save
      redirect_to @origin
    else
      # naughty!
    end
  end

  def update
    if current_user.try(:staff?)
      # update
    else
      #do nothing
    end
  end

  def destroy
    if current_user.try(:staff?)
      #delete!
    else
      #do nothing
    end
  end

private

  def check_if_staff
    if :authenticate_user!
      if current_user.try(:staff?)
        return true
      elsif current_user.try(:admin?)
        return true
      end
    end
    redirect_to '/'
  end


  def origin_params
    params.require(:origin).permit(:location, :phone)
  end
end
