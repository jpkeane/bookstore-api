FactoryGirl.define do
  factory :publishing_house do
    name { Faker::Company.name }
    discount { 0 }
  end
end
