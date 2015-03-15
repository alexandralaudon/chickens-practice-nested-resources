require 'rails_helper'
feature 'chickens have a secret plan' do
  scenario 'chickens can sign up' do
    visit root_path
    click_on "Sign Up"

    fill_in "Name", with: "Bernice"
    fill_in "Password", with: "12345"
    fill_in "Password confirmation", with: "12345"
    check :chicken

    click_on "Join the movement"

    expect(page).to have_content "Welcome to the movement! Bock bock!"
    expect(page).to have_content "List of Safe Places"
  end
  scenario 'non-chickens can\'t sign up'
    visit root_path
    click_on "Sign Up"

    fill_in "Name", with: "Bernice"
    fill_in "Password", with: "12345"
    fill_in "Password confirmation", with: "12345"
    click_on "Join the movement"

    expect(page).to have_content "You must be a chicken to be part of our escape plan!"
  end

  scenario 'chickens can sign in' do
    user = create_user
    visit root_path
    click_on "Sign In"
    fill_in :name, with: user.name
    fill_in :password, with: user.password
    click_on "Sign In"

    expect(page).to have_content "List of Safe Places"
  end


end
