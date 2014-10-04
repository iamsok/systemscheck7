FactoryGirl.define do
  factory :manufacturer do
    sequence :name do |n|
     "Hyundai#{n}"
    end
    country "Korea"
  end
end

