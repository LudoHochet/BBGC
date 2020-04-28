class LinksController < ApplicationController

  def create
    @link = Link.new(links_params)
    authorize @link
    @article = Article.find(params[:article_id])
    @link.article = @article
    if @link.save
      redirect_to article_path(@article, anchor: 'linkszone')
    end
  end

  private

  def links_params
    params.require(:link).permit(:text, :label, :link)
  end
end
