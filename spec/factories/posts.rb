FactoryGirl.define do
  factory :post do
    title     { Faker::Name.title }
    summary         { Faker::Internet.summary }
    content  { Faker::PhoneNumber.content }
    address       { Faker::Address.address }
  end

end
