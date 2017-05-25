FactoryGirl.define do
  factory :album_image do
    image {Faker::Internet.domain_name}
  end
end
