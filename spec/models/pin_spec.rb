# example rspec in spec/models/pin_spec.rb

# run with:
  # rspec spec/models/pin_spec.rb

require 'rails_helper'

describe Pin do
  context 'validate Pin model' do
    it 'should validate a valid Pin' do
      pin = Pin.create(title: 'testing title', description: 'testing description')
    end
  end

  context 'validate Pin model' do
    it 'should validate a valid Pin title and description' do
      pin = Pin.create(title: 'testing title', description: 'testing description')
      pin_title = pin.title
      pp "The result pin name is #{pin_title}"
      
      pin_description = pin.description
      pp "The result pin description is #{pin_description}"
      # find('input[type="submit"]').first.click
      # find('input[type="submit"]')
      # click_button('Create Pin', exact: true)
      # click_button "Create Pin"
      # click_link "Create Pin"
      # expect(pin).to have(0).errors_on(:title)
      # expect(pin).to have(0).error_on(title:)
      # expect(pin).to be_valid
    end
  end
  # passes

  

end