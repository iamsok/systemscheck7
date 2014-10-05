FactoryGirl.define do
  factory :car do
    sequence :name do |n|
     "Accord#{n}"
    end
    year 2014
    mileage 12000
    color "red"
    description "good condition"
  end
end

