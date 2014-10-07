require 'rails_helper'

feature 'Car salesman adds a manufacturer' do

  before :each do
    visit new_manufacturer_path
  end

  scenario  'salesman requires specific car manufacturers name and country' do
    manufacturer = FactoryGirl.build(:manufacturer)

    fill_in "Name", with: manufacturer.name
    fill_in "Country", with: manufacturer.country
    click_on "Add New Manufacturer"

    expect(page).to have_content("Car was successfully added!")
  end

  scenario 'Salesman cannot submit the same manufacturer' do
    manufacturer = FactoryGirl.create(:manufacturer)

    fill_in "Name", with: manufacturer.name
    fill_in "Country", with: manufacturer.country
    click_on "Add New Manufacturer"

    expect(page).to have_content("This manufacturer already exists in our database")
  end

  scenario 'Salesman tries to create a blank field' do
    click_on "Add New Manufacturer"

    expect(page).to have_content("Please fill in required information")
  end
end

