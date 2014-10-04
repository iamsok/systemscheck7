require 'rails_helper'

feature 'Car salesman adds a car' do

  scenario  'salesman requires specific car manufacturers name and country' do
    manufacturer = FactoryGirl.build(:manufacturer)
    visit new_manufacturer_path
    fill_in "Name", with: manufacturer.name
    fill_in "Country", with: manufacturer.country
    click_on "Add New Manufacturer"
    expect(page).to have_content("Car was successfully added!")

  end

  scenario 'Salesman cannot submit the same manufacturer' do
    manufacturer = FactoryGirl.create(:manufacturer)
    visit new_manufacturer_path
    fill_in "Name", with: manufacturer.name
    fill_in "Country", with: manufacturer.country
    click_on "Add New Manufacturer"
    expect(page).to have_content("This manufacturer already exists in our database")
  end

  scenario 'Salesman tries to create a blank field' do
    manufacturer = FactoryGirl.create(:manufacturer)
    visit new_manufacturer_path
    click_on "Add New Manufacturer"
    expect(page).to have_content("Please fill in required information")
  end
end

