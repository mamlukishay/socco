class Api::GamesController < ApplicationController
  respond_to :json

  def show
    if Game.exists?(params[:id])
      @game = Game.find(params[:id])
    else
      render :json => { :message => "Game with id #{params[:game_id]} does not exist" }, :status => :not_found
    end    
  end
  
  def next
    unless Game.all.empty?
      @game = Game.first
    else
      render :json => { :message => "No games exist" }, :status => :not_found
    end    
  end
end
