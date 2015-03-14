def create_user
  User.create!(name:"Dieter", password:"secret", chicken: true)
end
