class ParagraphsController < ApplicationController

  def create
    @paragraph = Paragraph.new(paragraphs_params)
    authorize @paragraph
    @article = Article.find(params[:article_id])
    @paragraph.article = @article
    if @paragraph.save
      redirect_to article_path(@article)
    end
  end

  private

  def paragraphs_params
    params.require(:paragraph).permit(:title, :content, :photo)
  end
end
