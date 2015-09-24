# run
  # rspec spec/features/home_spec.rb  # this spec

  # rspec spec/models                 # all in folder
  # rspec                             # all specs
  # bundle exec rspec

require 'rails_helper'

# feature "visit root" do
#   scenario "the visitor sees root text" do
#     visit root_path
#     # expect(page).to have_text("New Pin")
#     expect(page).to have_text("hat")
#   end

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
end