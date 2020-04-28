class LinksController < ApplicationController
  before_action :set_link, only: [ :edit, :update, :destroy]

  def create
    @link = Link.new(links_params)
    authorize @link
    @article = Article.find(params[:article_id])
    @link.article = @article
    if @link.save
      redirect_to article_path(@article, anchor: 'linkszone')
    end
  end

  def edit
    @article = Article.new # for button new article in navbar
    @article = Article.find(params[:article_id])
  end

  def update
    @link.update(links_params)
    @article = Article.find(params[:article_id])
    redirect_to article_path(@article)
  end

  def destroy
    @link.destroy
    @article = Article.find(params[:article_id])
    redirect_to article_path(@article)
  end

  private

  def set_link
    @link = Link.find(params[:id])
    authorize @link
  end


  private

  def links_params
    params.require(:link).permit(:text, :label, :link, :suffixe)
  end
end
