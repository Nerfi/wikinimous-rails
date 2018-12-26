class ArticlesController < ApplicationController

  def index
    @articles = Article.all

  end

  def new
    @articles = Article.new

  end


  def create

    @article = Article.new(articles_params)
    @article.save

    redirect_to articles_path

  end

  def show
    @article = Article.find(params[:id])

  end
end
