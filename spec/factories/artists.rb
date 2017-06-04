FactoryGirl.define do
  factory :artist do
    name  { Faker::Name.first_name}
    genre  { Faker::Name.last_name }
    country { Faker::Address.country }
    image { Faker::Internet.url('example.com', '/foobar.png') }
  end
end
