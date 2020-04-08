class ArticlesController < ApplicationController
  before_action :set_article, only: [ :show, :edit, :update, :destroy ]

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(articles_params)
    if @article.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @article.update(articles_params)
    redirect_to article_path(@article)
  end

  def destroy

    @article.destroy
    redirect_to root_path
  end

  private
  def set_article
    @article = Article.find(params[:id])
  end

  def articles_params
    params.require(:article).permit(:title, :category, :content)
  end
end
