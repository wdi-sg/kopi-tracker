class KopisController < ApplicationController
before_action :authenticate_user!, :except => [ :show, :index ]

  def index
    # test to see if we are at /origins/:id/kopis or /kopis
    if params.has_key?(:origin_id)
      # get all the kopis for a specific origin
      @origin_id = params[:origin_id]
      @kopis = Kopi.where(origin_id: params[:origin_id])
    # test to see if we are at /roasts/:id/kopis or /kopis
    elsif params.has_key?(:roast_id)
      # get all the kopis for a specific roast
      @roast_id = params[:roast_id]
      @kopis = Kopi.where(roast_id: params[:roast_id])
    else
      # get all kopis
      if (params[:sort_by] == "desc")
        @kopis = Kopi.all.sort_by {|kopi| kopi.customers.length}.reverse
      else
        @kopis = Kopi.all.order('name ASC')
      end
    end
  end

  def show
    @kopi = Kopi.find(params[:id])
  end

  def new
    if( params[:origin_id].present? )
      @origin_id = params[:origin_id]
    end
    @origins = Origin.all
    @roasts = Roast.all
  end

  def edit
    @kopi = Kopi.find(params[:id])
    @origins = Origin.all
    @roasts = Roast.all
  end

  def create
    @kopi = Kopi.new(kopi_params)
    @kopi.user = current_user
    @kopi.save
    redirect_to @kopi
  end

  def update
    @kopi = Kopi.find(params[:id])
    @kopi.update(kopi_params)
    redirect_to @kopi
  end

  def destroy
    @kopi = Kopi.find(params[:id])
    @kopi.destroy
    redirect_to root_path
  end

private

  def kopi_params
    params.require(:kopi).permit(:name, :origin_id, :roast_id)
  end

end