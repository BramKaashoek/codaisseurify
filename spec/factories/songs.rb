FactoryGirl.define do
  factory :song do
    name { Faker::Hobbit.character }
    track_number { Faker::Number.number(2) }
    artist { build :artist }
    album{ build :album }
  end
end
