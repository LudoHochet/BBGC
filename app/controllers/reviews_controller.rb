class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @article = Article.find(params[:article_id])
    @review.article = @article
    @review.user = current_user
    authorize @review
    if @review.save
      redirect_to article_path(@article)
    else
      render 'articles/show'
    end
  end

  private
  def review_params
    params.require(:review).permit(:content)
  end
end
