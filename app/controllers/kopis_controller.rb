class KopisController < ApplicationController
  def index
  end

  def show
    @kopi = Kopi.find(params[:id]);
    @customers = @kopi.customer
  end
end