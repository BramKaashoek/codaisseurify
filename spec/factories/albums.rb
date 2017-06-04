FactoryGirl.define do
  factory :album do
    name { Faker::Name.first_name }
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'logo_image.jpg'), 'image/jpg') }
    year { Faker::Number.between(1000, 2000)}
    artist { build :artist}
  end
end
