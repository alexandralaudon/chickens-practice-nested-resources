require 'rails_helper'

feature 'user can CRUD chickens' do
  scenario 'user can see list of chickens and add to it' do
    visit root_path
    expect(page).to have_content "List of Chickens"

    click_on "Add Chicken"
    fill_in "Name", with: "Bertha"
    fill_in "Eggs per week", with: "18"

    click_on "Create Chicken"

    expect(page).to have_content "Chicken successfully created!"
    expect(page).to have_content "Bertha, 18 eggs per week"
  end

  scenario 'user can destroy chickens from show page' do
    visit root_path
    click_on "Add Chicken"
    fill_in "Name", with: "Bertha"
    fill_in "Eggs per week", with: "18"
    click_on "Create Chicken"

    click_on "Bertha, 18 eggs per week"

    click_on "Eat that chicken!"

    expect(page).to have_content "That chicken was delicious!"
    expect(page).to_not have_content "Bertha"
  end

end
