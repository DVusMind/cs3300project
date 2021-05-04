require "rails_helper"

RSpec.feature "Visiting the homepage", type: :feature do

  scenario "The visitor should see projects" do
    
    visit root_path
    click_link "Sign up"
    fill_in "Email", with: "yo@uccs.edu"
    fill_in "Password", with: "123456"
    fill_in "Password confirmation", with: "123456"
    click_button "Sign up"
    expect(page).to have_text("Projects")
  end
end