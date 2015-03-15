def create_user
  User.create!(name:"Dieter", password:"secret", chicken: true)
end

def create_safe_place
  SafePlace.create!(name: "The Castle Ahhhhh", location: "France")
end

def create_chicken
  Chicken.create!(name: "Ben Affleck", eggs_per_week: 0)
end

def create_escape_plan
  safe_place = create_safe_place
  EscapePlan.create!(
  description: "Best one yet!",
  first_stop: "Moscow",
  disguise: "Strong perfume",
  safe_place_id: safe_place.id)
end

def create_membership
  chicken = create_chicken
  escape_plan = create_escape_plan

  Membership.create!(chicken_id: chicken.id, escape_plan_id: escape_plan.id)
end
