class KopisController < ApplicationController
  # before_action :authenticate_user!, :except => [ :show, :index ]
  before_action :authenticate_customer!, :except => [ :show ]


  def index
    @kopis = Kopi.all
     @customer = Customer.find(current_customer.id)
  end

  def show
    @kopi = Kopi.find(params[:id])
  end

  def new
    @kopis = Kopi.all
    @roasts = Roast.all
    @origins = Origin.all
  end

  def edit
    @kopi = Kopi.find(params[:id])
    @kopis = Kopi.all
    @roasts = Roast.all
    @origins = Origin.all
  end

  def create
    puts kopi_params
    @params = kopi_params
    # @kopi = Kopi.new(kopi_params)
    # @kopi.save
    @kopi = Kopi.new(:name => @params[:name], :roast => Roast.find(@params[:roast].to_i), :origin => Origin.find(@params[:origin].to_i), :price => @params[:price])
    @kopi.save
    redirect_to @kopi
  end

  def update
    @kopi = Kopi.find(params[:id])
    @params = kopi_params

    @kopi.update(:name => @params[:name], :roast => Roast.find(@params[:roast].to_i), :origin => Origin.find(@params[:origin].to_i), :price => @params[:price])
    #NOTE:default behaviour is to link to the SHOW of that @article
    redirect_to @kopi
  end

  def destroy
  end

  def indexstock
    # puts params[:sort_order]
    # @order = params[:sort_order]

    @kopi = Kopi.find(params[:id])
    # @customers = @kopi.customers.group(:id).order("count(*) #{@order}")
    @customers = @kopi.customers
    # puts @customers[0].email
  end

  def newstock
    @kopis = Kopi.all
  end


  def createstock
    @customer = Customer.find(current_customer.id)
    # puts params[:kopi][:kopi_id]
    @kopi_ids = params[:kopi][:kopi_id]

    @kopi_ids.each do |kopi_id|
      @kopi = Kopi.find(kopi_id)
       @customer.kopis << @kopi
    end

    redirect_to stock_path(@customer)
  end

  def customer
    @customer = Customer.find(params[:id])
    @kopis = @customer.kopis
    # puts @kopis[0].name
  end

  def sortcustomer
    puts params[:sort_order]
    @order = params[:sort_order]
    # @customers = Customers.group(:id).order("count(kopis) #{@order}")

    # @customers = Customer.group(:id).order("count(*) #{@order}")

    @customers = Customer.left_joins(:kopis).group(:id).order("count(kopis) #{@order}")
  end

  private
    def kopi_params
      params.require(:kopi).permit(:name, :roast, :origin, :price, :kopi_id => [])
    end

    # def kopi_id_params
    #   params.require(:kopi_id).permit(:kopi_id)
    # end

end