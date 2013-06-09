class Api::AttendancesController < ApplicationController
  before_filter :set_game_and_player
  respond_to :json
  
  def create
    attendance = params[:attendance]
    
    unless attendance.blank?
      att_val = ActiveSupport::JSON.decode(attendance).value
      
      if @game.players.find_by_id(@player.id).blank?
        @response_status = :created
        att = Attendance.create(:game_id => @game.id, :player_id => @player.id, :value => att_val)        
      else
        @response_status = :accepted
        att = @game.attendances.find_by_player_id(@player.id)
        att.value = att_val
        att.save
      end
        
      if att
        render :json => { :message => "Attendance processed successfully" }, :status => @response_status
      else
        render :json => { :message => "Error creating attendance: #{Attendance.errors.first}" }, :status => :unprocessable_entity
      end
    else
      render :json => { :message => "Missing parameter 'attendance'" }, :status => :bad_request
    end
    @players = @game.players
  end
 
private
  
  def set_game_and_player
    if Game.exists?(params[:game_id])
      @game = Game.find(params[:game_id])
      
      if Player.exists?(params[:player_id])
        @player = Player.find(params[:player_id])
      else
        render :json => { :message => "Player with id #{params[:player_id]} does not exist" }, :status => :not_found
        return
      end     
    else
      render :json => { :message => "Game with id #{params[:game_id]} does not exist" }, :status => :not_found
    end
  end
  
end
