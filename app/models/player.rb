class Player < ActiveRecord::Base
  attr_accessible :active?, :birthdate, :email, :fname, :lname, :nickname, :phone1, :phone2
end
