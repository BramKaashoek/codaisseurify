FactoryGirl.define do
  factory :artist_image do

    image { Faker::Internet.domain_name }

    artist { build :artist }
  end
end
