class ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(articles_params)
    if @article.save
      redirect_to root_path
    else
      rende new
    end
  end

  private

  def articles_params
    params.require(:article).permit(:title, :category, :content)
  end
end
