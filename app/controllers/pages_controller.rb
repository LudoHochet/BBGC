class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  skip_after_action :verify_authorized

  def home
    # @articles = Article.all.order(:created_at)
    @articles = policy_scope(Article).order(created_at: :desc)
  end
end

