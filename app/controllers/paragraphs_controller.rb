class ParagraphsController < ApplicationController
  before_action :set_paragraph, only: [ :edit, :update, :destroy]

  def create
    @paragraph = Paragraph.new(paragraphs_params)
    authorize @paragraph
    @article = Article.find(params[:article_id])
    @paragraph.article = @article
    if @paragraph.save
      redirect_to article_path(@article, anchor: 'paragraphszone')
    end
  end

  def edit
    @article = Article.new # for button new article in navbar
    @article = Article.find(params[:article_id])
  end

  def update
    @paragraph.update(paragraphs_params)
    @article = Article.find(params[:article_id])
    redirect_to article_path(@article)
  end

  def destroy
    @paragraph.destroy
    @article = Article.find(params[:article_id])
    redirect_to article_path(@article)
  end

  private

  def set_paragraph
    @paragraph = Paragraph.find(params[:id])
    authorize @paragraph
  end

  def paragraphs_params
    params.require(:paragraph).permit(:title, :content, :photo)
  end
end
