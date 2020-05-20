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
    @link = Link.new
    # @href = @article.content.scan(/http\S*/).join #get the url for the link
    # @content = @article.content.gsub(@href,"") # remove the url to the content to display
    # @link_code_array = @article.content.scan(/&&.*&&/) # search for the code link
    # @link_code = @link_code_array.join # transform the array into string to can replace it by the label
    # @label_link = @link_code.gsub("&&", "") # create the label
    # @new_content = @content.gsub(@link_code, @label_link)


  end

  def edit
  end

  def update
    if @article.update(articles_params)
      redirect_to article_path(@article)
    else
      render :edit
    end
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
