class KopisController < ApplicationController
  def index
    @kopis = Kopi.all()
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
