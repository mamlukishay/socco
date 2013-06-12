require "#{Rails.root}/app/helpers/attendance_helper"

class Player < ActiveRecord::Base
  
  # associations
  has_many :attendances
  has_many :games, :through => :attendances
  
  # accessors
  attr_accessible :email, :fname, :is_active, :lname, :nickname, :phone
  
  # scopes
  scope :attending, joins(:attendances).where('attendances.value = ?', AttendanceHelper::AttendanceVals::ATTENDING)
  scope :tentative, joins(:attendances).where('attendances.value = ?', AttendanceHelper::AttendanceVals::TENTATIVE)
  scope :not_coming, joins(:attendances).where('attendances.value = ?', AttendanceHelper::AttendanceVals::NOT_COMING)

  def full_name
    "#{self.fname} #{self.lname}"
  end
end
