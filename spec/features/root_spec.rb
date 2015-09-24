# example rspec in spec/features/root_spec.rb
require 'rails_helper'

feature "visit the root" do
  
  scenario "the visitor sees root" do
    visit '/'
  end
  # passes

  scenario "the visitor will not see word bla" do
    visit '/'
    within('.nav') do
      expect(page).not_to have_text('bla')
    end
  end
  # passes

  scenario "the visitor will see word Pinup" do
    visit '/'
    within('nav') do
      expect(page).to have_text('Pinup')
    end
  end
  # passes

  scenario "the visitor will see http status success" do
    visit '/'
    expect(page).to have_http_status(:success)
  end
  # passes

  scenario "the visitor successfully create a new pin" do
    visit '/'
    pin = Pin.new
    expect(pin).to be_valid
  end
  # passes



  # scenario "the visitor successfully sign out" do
  #   visit '/'
  #   click_button "Sign Out"
  #   # click_link "Sign Out"
  #   expect(page).to have_http_status(:success)
  # end

  # scenario "the visitor sees root text" do
  #   visit '/'
  #   expect(page).to have_text("Hat")
  #   # expect(page).to have_text("Edit Your Account")
  #   # expect(page).to be_valid
  # end


  # scenario "visit root", js: => true
  #   visit root_path
  #   expect(page).not_to have_errors
  # end

  # scenario "the visitor sees root text" do
  #   visit root_path
  #   expect(page).to have_text("New Pin")
  # end

  # feature "visit homepage" do
  #   scenario "the visitor sees welcome text" do
  #     visit root_path
  #     expect(page).to have_text("New Pin")
  #   end
  # end
# end


# run
  # rspec spec/features/home_spec.rb  # this spec

  # rspec spec/models                 # all in folder
  # rspec                             # all specs
  # bundle exec rspec
end