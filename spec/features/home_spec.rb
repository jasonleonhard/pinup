require 'rails_helper'

feature "visit homepage" do
  scenario "the visitor sees welcome text" do
    visit root_path
    expect(page).to have_text("New Pin")
  end
end

# run 
  # this spec
    # rspec spec/features/home_spec.rb

  # all in folder
    # rspec spec/models
  # all specs
    # rspec 
  # bundle exec rspec
