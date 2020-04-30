class PlayersController < ApplicationController

  def new
    @player = Player.new
    authorize @player
    @article = Article.new # for button in navbar
  end
end
