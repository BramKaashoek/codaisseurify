FactoryGirl.define do
  factory :artist do
    name  { Faker::Name.first_name}
    genre  { Faker::Color.color_name }
    country { Faker::Address.country }
  end
end
