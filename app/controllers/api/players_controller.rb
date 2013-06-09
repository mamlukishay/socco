class Api::PlayersController < ApplicationController
  before_filter :set_game
  respond_to :json
  
  def index
    @players = @game.players
  end
  
  def attending
    @players = @game.players.attending
  end
  
  def tentative
    @players = @game.players.tentative
  end

  def not_coming
    @players = @game.players.not_coming
  end
  
  def set_game
    if Game.exists?(params[:game_id])
      @game = Game.find(params[:game_id])
    else
      render :json => { :message => "Game with id #{params[:game_id]} does not exist" }, :status => :not_found
    end
  end
  
end
