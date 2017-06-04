FactoryGirl.define do
  factory :album do
    name { Faker::Name.first_name }
    year { Faker::Number.between(1000, 2050)}
    image { Faker::Internet.url('example.com', '/foobar.png') }
    artist { build :artist}
  end
end
