def create_user
  User.create!(name:"Dieter", password:"secret", chicken: true)
end

def create_safe_place
  SafePlace.create!(name: "The Castle Ahhhhh", location: "France")
end
