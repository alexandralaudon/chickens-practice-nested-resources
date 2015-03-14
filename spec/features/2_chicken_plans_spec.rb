require 'rails_helper'

feature 'chickens must have a plan' do
  scenario 'there are many safe places' do
    sign_in_user
    safe_place = create_safe_place

    visit safe_places_path
    expect(page).to have_content "France: The Castle Ahhhhh"

  end
end
