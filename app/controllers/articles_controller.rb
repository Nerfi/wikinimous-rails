class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all

  end

  def new
    @articles = Article.new

  end


  def create

    @article = Article.new(article_params)
    @article.save

    redirect_to articles_path

  end

  def show
    @article = Article.find(params[:id])

  end

  def edit
   # @article = Article.find(params[:id])

  end

  def update

    #@article = Article.find(params[:id])
    @article.update(article_params)
    #redirect the user to the index
    redirect_to articles_path(@article)

  end

  def destroy
    #@article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path

  end


  private

  def article_params
    params.require(:article).permit(:title,:content)

  end
#usamos esto ya que 'show', 'edit', 'update', 'destroy' usan lo mismo
#'Article.find(params[:id])' also know as DRY
  def set_article
    @article = Article.find(params[:id])

  end


end

#  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
