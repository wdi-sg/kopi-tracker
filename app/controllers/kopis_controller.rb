class KopisController < ApplicationController

  before_action :authenticate_user!, :except => [ :show, :index ]

  def index
    @customers = Customer.all
    @kopis = Kopi.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @kopis }
    end
  end

  def show
    @kopi = Kopi.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @kopi }
    end
  end

  def new
    @customers = Customer.all
    @kopi = Kopi.new
  end

  def edit
    @kopi = Kopi.find(params[:id])
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

  def update
    @kopi = Kopi.find(params[:id])

    if @kopi.update(kopi_params)
    redirect_to @kopi
    else
      render 'edit'
    end
  end

  def destroy
    @kopi = Kopi.find(params[:id])
    @kopi.destroy

    redirect_to kopis_path
  end

private
  def kopi_params
      params.require(:kopi).permit(:name, :roast, :customer_ids => [])
  end
end