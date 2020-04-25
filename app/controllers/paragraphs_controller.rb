class ParagraphsController < ApplicationController

  def create
    @paragraph = Paragraph.new(paragraphs_params)
    authorize @paragraph
  end

  private

  def paragraphs_params
    params.require(:paragraph).permit(:title, :content, :photo)
  end
end
