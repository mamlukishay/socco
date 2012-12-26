class Attendance < ActiveRecord::Base
  # associations
  belongs_to :game
  belongs_to :player
  
  attr_accessible :game_id, :player_id, :value
end
