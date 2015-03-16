require 'rails_helper'

feature 'chickens can be members of escape plans' do
  scenario 'chickens can be added to escape plans on escape plan show page' do
    escape_plan = create_escape_plan
    chicken = create_chicken
    sign_in_user
    visit escape_plan_path(escape_plan)

    select "Ben Affleck", from: "membership_chicken_id"

    click_on "Add Chicken to Plan"

    expect(page).to have_content "We'll notify Ben Affleck that s/he has been successfully added to your escape plan."

  end

  scenario 'user can delete chickens from escape plans' do
    escape_plan = create_escape_plan
    chicken = create_chicken
    sign_in_user
    visit escape_plan_path(escape_plan)

    expect(page).to have_content "Members: Ben Affleck"

    select "Ben Affleck", from: "membership_chicken_id"

    click_on "Add Chicken to Plan"

    expect(page).to have_content "Ben Affleck"

    click_on "Remove this chicken"




    expect(page).to have_content "Ben Affleck was a delicious chicken!"
  end




end
