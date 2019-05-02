class CustomersController < ApplicationController

  def show
    @customer = Customer.find(params[:id])
    @kopis = @customer.kopi
  end
end