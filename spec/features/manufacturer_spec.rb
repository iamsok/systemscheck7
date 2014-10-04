require 'rails_helper'

feature 'Car salesman adds a car' do

  scenario  'salesman requires specific car manufacturers name and country' do
    manufacturer = FactoryGirl.build(:manufacturer)
    visit root_path
    fill_in "Name", with: manufacturer.name
    fill_in "Country", with: manufacturer.country
    click_on "Add New Car"
    expect(page).to have_content("Car was successfully added")
  end
end

