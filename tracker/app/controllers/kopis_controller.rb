class KopisController < ApplicationController
  def price
    puts '~~~~~~~~~~~~~~~~~~~~~~~~~~'
    puts request.query_string
    puts '~~~~~~~~~~~~~~~~~~~~~~~~~~'
    @kopi = Kopi.find(request.query_string)
    render json: @kopi
  end
end
