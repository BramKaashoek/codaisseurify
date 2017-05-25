FactoryGirl.define do
  factory :song do
    name { Faker::Hobbit.character }
    album { Faker::Hobbit.location }
    track_number { Faker::Number.number(2) }
    year { Faker::Number.between(1990, 2017) }
    artist { build :user }
    album_image { build :album_image }
  end
end
