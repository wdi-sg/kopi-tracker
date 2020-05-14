class KopisController < ApplicationController
  before_action :authenticate_user!, :except => [ :show, :index ]

  def index
    @kopis = Kopi.all.order_list(params[:sort_by])
    @origin = Kopi.joins(:origin)
  end

  def new
  end

  def create
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
  end

  def edit
    @kopi = Kopi.find(params[:id])
    @customers = Customer.all
  end

  def update
    @kopi = Kopi.find(params[:id])
    update_happened = @kopi.update(kopi_params)

    if update_happened
      redirect_to @kopi
    else
      render 'edit'
    end
  end

  def destroy
    @kopi = Kopi.find(params[:id])
    @kopi.destroy

    redirect_to root_path
  end

  private
    def kopi_params
      params.require(:kopi).permit(:name, :roast_id, :origin_id, :price, :customer_ids => [])
    end
end