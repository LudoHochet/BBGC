class PlayersController < ApplicationController

  def new
    @player = Player.new
    authorize @player
  end
end
