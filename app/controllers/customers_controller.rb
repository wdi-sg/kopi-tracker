class CustomersController < ApplicationController
before_action :authenticate_customer!, :except => [:show]

  def index
    sort_by = params[:sort]
    if sort_by == "asc"
      @customers = Customer.joins(:kopis).group(:id).order("count(kopis.id) asc")
    elsif sort_by == "desc"
      @customers = Customer.joins(:kopis).group(:id).order("count(kopis.id) desc")
    else 
      @customers = Customer.all
    end
  end
  def show
    @customer = Customer.find(params[:id])
  end
end