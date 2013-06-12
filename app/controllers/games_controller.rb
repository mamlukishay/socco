class GamesController < ApplicationController
  def next
    @game = Game.last
    @players = @game.players
  end
end
