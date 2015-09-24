# run with:
  # rspec spec/features/signin_spec.rb

require 'rails_helper'

feature "signing in" do
  let(:user) {FactoryGirl.create(:user)}
  
  def fill_in_signin_fields
    fill_in "user[email]", with: user.email
    fill_in "user[password]", with: user.password
    click_button "Log in"
  end
  
  scenario "visiting the site to sign in" do
    visit root_path
    click_link "Sign In"
    fill_in_signin_fields
    # expect(page).to have_content("Signed in successfully.")
    expect(page).to have_http_status(:success)
  end

  scenario "visiting the site to sign in then sign out" do
    visit root_path
    click_link "Sign In"
    fill_in_signin_fields
    click_link "Sign Out"
    expect(page).to have_http_status(:success)
  end


end