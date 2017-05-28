FactoryGirl.define do
  factory :artist_image do

    remote_image_url "http://img05.deviantart.net/5722/i/2013/035/4/9/vomiting_gnome_meme_by_soplon-d5tup49.png"
    artist { build :artist}

  end
end
