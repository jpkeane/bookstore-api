FactoryGirl.define do
  factory :book do
    title { Faker::Book.title }
    price { Faker::Commerce.price }
    author
    association :publisher, factory: :publishing_house
  end

  factory :self_published_book, class: 'Book' do
    title { Faker::Book.title }
    price { Faker::Commerce.price }
    author
    association :publisher, factory: :author
  end
end
