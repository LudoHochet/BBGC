class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  before_action :set_article, only: [ :show, :edit, :update, :destroy ]


  def new
    @article = Article.new
    authorize @article
  end

  def create
    @article = Article.new(articles_params)
    authorize @article
    if @article.save
      redirect_to article_path(@article)
    else
      render :new
    end
  end

  def show
    @review = Review.new
    @paragraph = Paragraph.new
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
    authorize @article
  end

  def articles_params
    params.require(:article).permit(:title, :category, :content, photos: [])
  end
end
