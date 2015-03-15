require 'rails_helper'

feature 'user must have a plan' do
  scenario 'there are many safe places' do
    sign_in_user
    safe_place = create_safe_place

    visit safe_places_path
    expect(page).to have_content "France: The Castle Ahhhhh"

  end

  scenario 'user can create new safe places' do
    sign_in_user
    visit safe_places_path

    click_on 'Another place you\'d like to escape to?'

    fill_in "Name", with: "Disney World"
    fill_in "Location", with: "Orlando, FL"

    click_on "Create safe place"

    expect(page).to have_content "New safe place added!  Any escape plans?"

    expect(page).to have_content "Orlando, FL: Disney World"
  end


  scenario 'user can create new escape plans from safe place show page' do
    sign_in_user
    user = create_user
    safe_place = create_safe_place

    visit safe_places_path

    click_on "France: The Castle Ahhhhh"

    click_on "Create New Escape Plan to France"

    fill_in "Description", with: "Jorge's Escape Plan to France"
    fill_in "First stop", with: "Italy"
    fill_in "Disguise", with: "fake moustache"

    click_on "Create Escape Plan"

    expect(page).to have_content "Your escape plan has been created!"
    expect(page).to have_content "Jorge's Escape Plan to France, via Italy, involves a fake moustache"
  end




end
