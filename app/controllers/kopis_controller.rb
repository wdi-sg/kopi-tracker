class KopisController < ApplicationController
  def index
    if request.query_parameters[:sort] == "desc"
      @kopis = Kopi.left_outer_joins(:customers)
                   .group("kopis.id")
                   .order("count(customers) desc")
    else
      @kopis = Kopi.left_outer_joins(:customers)
                   .group("kopis.id")
                   .order("count(customers) asc")
    end
  end

  def show
    @kopi = Kopi.find(params[:id])
  end

  def new
    @roasts = Roast.all
    @origins = Origin.all
  end

  def create
    @kopi = Kopi.new(post_params)

    if @kopi.save == true
      redirect_to @kopi
    else
      @roasts = Roast.all
      @origins = Origin.all
      render 'new'
    end

  end

  def edit
    @kopi = Kopi.find(params[:id])
    @roasts = Roast.all
    @origins = Origin.all
  end

  def update
    @kopi = Kopi.find(params[:id])

    @kopi.update(post_params)
    redirect_to @kopi
  end

  def destroy
    @kopi = Kopi.find(params[:id])

    @kopi.destroy
    redirect_to root_path
  end

private
  def post_params
    params.require(:kopi).permit(:name, :roast_id, :origin_id, :price_per_pound)
  end

end