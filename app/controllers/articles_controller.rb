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
    @href = @article.content.scan(/http\S*/).join
    @content = @article.content.gsub(@href,"")
    @label_link = @article.content.scan(/&&.*&&/).join.gsub("&&", "")

    # get all content of the article
    # put the all context in a string
    # search the http address with regex scan(/http\S*/)
    # search the key word to be the link with **frfr**
    # remove the http address of the content
    # create a link_to with keyword and http_path

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
