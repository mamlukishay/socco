class Api::PlayersController < ApplicationController
  
  def index
    @game = Game.find(params[:game_id])
    @attending = @game.players.attending
    @tentative = @game.players.tentative
    @not_coming = @game.players.not_coming
  end
  
end
