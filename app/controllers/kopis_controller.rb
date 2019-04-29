class KopisController < ApplicationController
  def index
    @kopis = Kopi.all
    puts @kopis
  end
end