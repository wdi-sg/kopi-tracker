class KopisController < ApplicationController
  before_action :authenticate_user!, :except => [ :show, :index]

  def index
    # if (params)
    #   @kopis = Kopi.where(user_id: current_user.id)
    # else
      @kopis = Kopi.all
    # end
  end

  def show
    @kopi = Kopi.find_by(id: params[:id] )
  end

  def new
    @origins = Origin.all
  end

  def create
    @user = current_user
    @kopi = Kopi.new(kopi_params)
    @kopi.user_id = current_user.id if current_user
    @kopi.save

    redirect_to  @kopi
  end
  
  private
  def kopi_params
    params.require(:kopi).permit(:name, :roast, :user_id, :origin_id, :customer_ids => [])
  end
  
end
