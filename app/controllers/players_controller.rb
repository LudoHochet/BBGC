class PlayersController < ApplicationController

  def new
    @player = Player.new
    authorize @player
    @article = Article.new # for button in navbar
  end

  def create
    @player = Player.new(params_players)
    authorize @player
    if @player.save
      redirect_to joueurs_path
    else
      render new
    end
  end

  private

  def params_players
    params.require(:player).permit(:first_name, :last_name, :live_elo, :live_class, :online_elo, :online_class)
  end
end
