object @game
attributes :id
  
child @attending => :attending  do
   attributes :email, :fname, :is_active, :lname, :nickname, :phone
end
  
child @tentative => :tentative do
  attributes :email, :fname, :is_active, :lname, :nickname, :phone
end

child @not_coming => :not_coming do
  attributes :email, :fname, :is_active, :lname, :nickname, :phone
end