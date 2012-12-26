class Game < ActiveRecord::Base
  # associations
  has_many :attendances
  has_many :players, :through => :attendances
  
  attr_accessible :address, :city, :ended_at, :is_template, :scheduled_at, :started_at
end
