require 'rails_helper'

describe "index show show artists" do
  let!(:artist1) { create :artist, name: "henk" }
  let!(:album1) { create :album, name: "henksalbum", artist: artist1 }
  let!(:song1) { create :song, name: "henkssong", album: album1 }
  let!(:song2) {create :song, name: "henksecondsong", album: album1 }

  let!(:artist2) { create :artist, name: "jan"}
  let!(:album2) { create :album, name: "jansalbum", artist: artist2 }
  let!(:song3) { create :song, name: "janssong", album: album2}

  it "artist name is displayed" do
    visit root_url
    expect(page).to have_text(artist1.name)
    expect(page).to have_text(artist2.name)
  end
end
