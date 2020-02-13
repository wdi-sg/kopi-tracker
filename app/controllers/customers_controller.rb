class CustomersController < ApplicationController
  before_action :authenticate_customer!, :except => [:show]

  def index
    sort_by = params[:sort]
    if sort_by == "asc"
      @customers = Customer.left_joins(:kopis).group(:id).order("count(kopis.id) asc").limit(10)
    elsif sort_by == "desc"
      @customers = Customer.left_joins(:kopis).group(:id).order("count(kopis.id) desc").limit(10)
    else
      @customers = Customer.all
    end
  end

  def show
    @customer = Customer.find(params[:id])
  end
end
