FactoryGirl.define do
  factory :artist do
    name  { Faker::Name.first_name}
    genre  { Faker::Name.last_name }
    country { Faker::Address.country }
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'logo_image.jpg'), 'image/jpg') }
  end
end
