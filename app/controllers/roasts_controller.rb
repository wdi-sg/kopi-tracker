class RoastsController < ApplicationController

def new
end

def show
  @roast = Roast.all
  end

def create
@roast = Roast.new(roasts_params)
@roast.save
redirect_to origins_path

end


private

def roasts_params
  params.require(:roast).permit(:name)
end

end