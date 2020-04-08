class ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(articles_params)
    if @article.save
      redirect_to root_path
    else
      render new
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(articles_params)
    redirect_to article_path(@article)
  end

  private

  def articles_params
    params.require(:article).permit(:title, :category, :content)
  end
end
