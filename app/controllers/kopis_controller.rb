class KopisController < ApplicationController
  # before_action :authenticate_user!, :except => [:show, :index]

  def index
    @kopis = Kopi.all

    @origins = Origin.all

    @user = current_user

    # if current_user
    #   @kopis = current_user.kopi
    #
    # end
  end

  def create
    @kopi = Kopi.new(kopi_params)

    @kopi.user = current_user

    @kopi.save

    redirect_to @kopi
    # @park = Park.new(park_params)
    #
    # @park.save
    # redirect_to @park
  end

  def show
    @kopi = Kopi.find(params[:id])
    # @kopi = Kopi.find_by(roast:"italian").Kopis
    @user = current_user

    @origins = Origin.all
  end

  def edit
    @user = current_user

    @kopi = Kopi.find(params[:id])

    @origins = Origin.all

    @roasts = Roast.all
  end

  def update
    @kopi = Kopi.find(params[:id])

    @kopi.update(kopi_params)

    redirect_to @kopi
  end

  def destroy
    @user = current_user

    @kopi = Kopi.find(params[:id])

    @kopi.destroy

    redirect_to @kopi
  end

  def new
    @user = current_user

    @kopis = Kopi.all

    @origins = Origin.all

    @roasts = Roast.all
  end

  private

  def kopi_params
    params.require(:kopi).permit(:name, :roast, :origin_id)
  end
end
