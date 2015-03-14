def sign_in_user
  user = User.new!(
    name: "Jorge",
    password: "password",
    chicken: true
    )
    user.save!
  visit root_path
  click_on "Sign In"
  fill_in :name, with: "Jorge"
  fill_in :password, with: "password"
  click_on "Sign In"
end
