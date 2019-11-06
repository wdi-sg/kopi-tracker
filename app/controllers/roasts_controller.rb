class RoastsController < ApplicationController

   def index
      @roasts = Roast.all
    end
end