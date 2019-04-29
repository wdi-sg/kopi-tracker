class KopisController < ApplicationController
  def index
    puts "inside indeX!"
    if params.has_key?(:roast_id)
      num = :roast_id

      @roasts = Roast.find(params[:roast_id]).roast_type
      # puts @roasts
      @kopis = Kopi.where(roast_id: params[:roast_id])
      # puts @kopis
    else

    @kopis = Kopi.all

    @origins = Origin.all
    puts "WHERE"
    puts @kopis[1].origin_id
    puts @origins[2].location
    @roasts = Roast.all


    # puts @kopis
    end
  end

  def new
    @roasts = Roast.all
    @origins = Origin.all
  end

  def create
    @kopi = Kopi.new(kopi_params)
    puts 'HELLO'
    puts @kopi.name
    @kopi.save
    redirect_to @kopi
  end

  def edit
    @kopi = Kopi.find(params[:id])
    @roasts = Roast.all
    @origins = Origin.all
  end

   def update
    @kopi = Kopi.find(params[:id])

    @kopi.update(kopi_params)
    redirect_to @kopi
  end

  def show
    @kopi = Kopi.find(params[:id])
    roast_id = @kopi.roast_id
    origin_id = @kopi.origin_id
    @roast = Roast.find(roast_id)
    @origin = Origin.find(origin_id)
  end

private

  def kopi_params
    params.require(:kopi).permit(:name, :roast_id, :origin_id)
  end

end