class CustomersController < ApplicationController
  def edit
  end

  def index
    @customers = Customer.all
  end

  def new
  end

  def show
    @customer = Customer.find(params[:id])
  end
end
