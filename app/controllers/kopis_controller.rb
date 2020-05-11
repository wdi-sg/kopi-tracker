class KopiController < ApplicationController
  def index
      
  end


  def show
  end

  def new
  end

  def edit

  end

  def create
  end

  def update
  end

  def destroy
  end

end

private
  def kopi_params
    params.require(:kopi).permit(:name, :origin_id, :roastedness)
  end