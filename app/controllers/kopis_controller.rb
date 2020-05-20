class KopisController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show]

	def index
		if params.has_key?(:origin_id)
			@kopis = Kopi.where(origin_id: params[:origin_id])
		else
			@kopis = Kopi.all
		end
	end

  def new
    if params.has_key?(:origin_id)
      @origins = Origin.where(id: params[:origin_id])
    else
      @origins = Origin.all
    end
    @roasts = Roast.all
  end

  def create
    #user session will be saved to retain info when user relogs
    #e.g. tracking user added kopis
    #user_session['created_kopis_id'].append(@kopi.id)

  	@kopi = Kopi.new(kopi_params)
    @kopi.user = current_user
  	
    if @kopi.save
      redirect_to @kopi
    else
      render 'new'
    end
  end

  def show
  	@kopi = Kopi.find(params[:id])
  	# if params[:origin_id].to_i != @kopi.origin.id
  	# 	render plain: 'This kopi doesnt exist belong to this origin'
  	# end
  end

  def edit
    @kopi = Kopi.find(params[:id])
  end

  def update
    @kopi = Kopi.find(params[:id])

    updated = @kopi.update(kopi_params)
    if updated == true
      redirect_to @kopi
    else
      render 'edit'
    end
  end

  def destroy
  	@origin = Kopi.find(params[:id]).origin

  	Kopi.find(params[:id]).destroy
    redirect_to root_path
  end
  	
  private
  def kopi_params
  	params.require(:kopi).permit(:name, :roast_id, :origin_id)
  end
end