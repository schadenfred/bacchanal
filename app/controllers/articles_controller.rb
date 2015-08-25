class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :set_bloggable, only: [:create, :index, :new]

  def index
    @articles = @bloggable.articles.all
  end

  def show
  end

  def new

    @article = @bloggable.articles.new
  end

  def edit
  end

  def create

    @article = @bloggable.articles.new(article_params)

    if @article.save
      redirect_to [@bloggable, :articles], notice: 'Article was successfully created.'
    else
      render :new
    end
  end

  def update

    if @article.update(article_params)
      redirect_to @article, notice: 'Article was successfully updated.'
    else
      render :edit
    end
  end

  def destroy

    @article.destroy
    redirect_to @article.org, notice: 'Article was successfully destroyed.'
  end

  private
    
    def set_article

      @article = Article.find(params[:id])
    end

    def set_bloggable

      klass = [Winery, Org].detect { |c| params["#{c.name.underscore}_id"]}
      @bloggable = klass.find(params["#{klass.name.underscore}_id"])
    end

    def article_params
      params.require(:article).permit(:content, :title)
    end
end
