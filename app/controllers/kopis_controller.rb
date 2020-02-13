class KopisController < ApplicationController
  def check_login
    if :authenticate_user || :authenticate_customer!
      return true
    end
  end

  before_action :check_login, :except => [:show, :index]

  def index
    sort_by = params[:sort]
    if sort_by == "asc"
      @kopis = Kopi.left_joins(:customers).group(:id).order("count(customers.id) asc").limit(10)
    elsif sort_by == "desc"
      @kopis = Kopi.left_joins(:customers).group(:id).order("count(customers.id) desc").limit(10)
    else
      @kopis = Kopi.all
    end
  end

  def new
    @kopis = Kopi.all
    @roasts = Roast.all
    @origins = Origin.all
  end

  def create
    if current_user
      @kopi = Kopi.new(kopi_params)
      @kopi.user = current_user
      puts @kopi.inspect
      puts @kopi.user
      @kopi.save
      redirect_to "/origins/" + @kopi.origin.id.to_s
    elsif current_customer
      @customer = Customer.find(current_customer.id)
      kopis = Kopi.where(id: customers_kopi_params["kopi_ids"] - [""])

      @customer.kopis = kopis
      # @customer.kopis.save
      # puts @customer.kopis
      @customer.save
      redirect_to @customer
    end
  end

  def show
    @kopi = Kopi.find(params[:id])
  end

  def user_kopis
  end

  private

  def kopi_params
    params.require(:kopi).permit(:name, :origin_id, :roast_id, :price)
  end

  def customers_kopi_params
    params.require(:kopi).permit(:kopi_ids => [])
  end

  def order_params
    params.require(:order).permit(:weight, :id, :kopi_id)
  end
end
