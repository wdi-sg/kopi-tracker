class KopisController < ApplicationController
  def index
    @kopis = Kopi.all().joins(:origin).where('kopis.origin_id = origins.id').pluck('kopis.name', 'origins.location','kopis.id')

  end

  def show
    @kopi = Kopi.find(params[:id])
    @roast = Roast.find(@kopi.roast_id)
    @origin = Origin.find(@kopi.origin_id)
  end

   def new
    @roasts = Roast.all
    @origins = Origin.all
  end

  def create
    @kopi = Kopi.new(kopi_params)
    @kopi.save

    # if @kopi.save == true
      redirect_to @kopi
    # else
    #   @roasts = Roast.all
    #   @origins = Origin.all
    #   render 'new'
    # end
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

    def destroy
      @kopi = Kopi.find(params[:id])
      @kopi.destroy
      redirect_to root_path
    end

private

  def kopi_params
    params.require(:kopi).permit(:name, :roast_id, :origin_id)
  end

end

# class ArticlesController < ApplicationController
#   def index
#     @articles = Article.all
#
#   end
#
#   def show
#     @article = Article.find(params[:id])
#
#   end
#
#   def new
#   end
#
#   def edit
#     @article = Article.find(params[:id])
#
#   end
#
#   def create
#     # render plain: params[:article].inspect
#     @article = Article.new(article_params)
#
#     @article.save
#     redirect_to @article
#
#   end
#
#   def update
#     @article = Article.find(params[:id])
#
#     @article.update(article_params)
#     redirect_to @article
#   end
#
#   def destroy
#     @article = Article.find(params[:id])
#     @article.destroy
#     redirect_to root_path
#   end
#
#   private
#   def article_params
#     params.require(:article).permit(:title, :text)
#   end
#
# end
