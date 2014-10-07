require 'rails_helper'

feature 'Car salesman adds a car' do

  before :each do
    visit new_car_path
  end

  scenario 'salesman enters car specification: name, year, mileage, color, description' do
    car = FactoryGirl.create(:car)

    fill_in "Name", with: car.name
    fill_in "Year", with: car.year
    fill_in "Mileage", with: car.mileage
    fill_in "Color", with: car.color
    fill_in "Description", with: car.description
    click_on "Add New Car"

    expect(page).to have_content("Car was successfully added!")
  end

  scenario 'salesman does not include all necessary information' do
    car = FactoryGirl.create(:car)

    click_on "Add New Car"

    expect(page).to have_content("Please fill in required information")
  end

  scenario 'car being inputted is not greater than or equal to 1920' do
    car = FactoryGirl.create(:car)

    fill_in "Name", with: car.name
    fill_in "Year", with: 1919
    fill_in "Mileage", with: car.mileage
    fill_in "Color", with: car.color
    fill_in "Description", with: car.description
    click_on "Add New Car"

    expect(page).to have_content("Year must be greater than or equal to 1920")
  end
end
