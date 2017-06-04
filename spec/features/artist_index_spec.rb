require 'rails_helper'

describe "index show show artists" do
  let(:artist1) { create :artist, name: "henk", remote_image_url: "http://res.cloudinary.com/dr9a28l84/image/upload/v1495710094/belakor_ogbgsg.jpg"}
  let(:album1) { create :album, name: "henksalbum", artist: artist1, remote_image_url: "http://res.cloudinary.com/dr9a28l84/image/upload/v1495710094/belakor_ogbgsg.jpg" }
  let(:song1) { create :song, name: "henkssong", album: album1 }
  let(:song2) {creatae :song, name: "henksecondsong", album: album1 }

  let(:artist2) { create :artist, name: "jan", remote_image_url: "http://res.cloudinary.com/dr9a28l84/image/upload/v1495710094/belakor_ogbgsg.jpg"}
  let(:album2) { create :album, name: "jansalbum", artist: artist2, remote_image_url: "http://res.cloudinary.com/dr9a28l84/image/upload/v1495710094/belakor_ogbgsg.jpg" }
  let(:song3) { create :song, name: "janssong", album: album2}

  it "artist name is displayed" do
    visit root_url
    expect(page).to have_text(artist1.name)
    expect(page).to have_text(artist2.name)
  end

  it "artists page has their songs" do
    visit artist_url(artist1)
    expect(page).to have_text(song1.name)
    expect(page).to have_text(song1.name)
    expect(page).not_to have_text(song3.name)
  end
end
