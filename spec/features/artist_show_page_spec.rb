require 'rails_helper'


describe "index show show artists" do
  before { login_as user }

  let(:user) { create :user, email: "current@user.com", password: 123456 }

  let!(:artist1) { create :artist, name: "henk" }
  let!(:album1) { create :album, name: "henksalbum", artist: artist1 }
  let!(:song1) { create :song, name: "henkssong", album: album1 }
  let!(:song2) {create :song, name: "henksecondsong", album: album1 }

  let!(:artist2) { create :artist, name: "jan"}
  let!(:album2) { create :album, name: "jansalbum", artist: artist2 }
  let!(:song3) { create :song, name: "janssong", album: album2}

  it "artists page has their songs" do
    visit artist_url(artist1)
    expect(page).to have_text(song1.name)
    expect(page).to have_text(song1.name)
    expect(page).not_to have_text(song3.name)
  end

  it "the page has the delete and add buttons when logged in" do
    visit artist_url(artist1)
    expect(page).to have_text("Delete")
    expect(page).to have_text("Add Song")
    expect(page).to have_text("Delete All Songs")
    expect(page).to have_text("Delete Artist")
  end

  it "clicking delete all songs will actually delete all songs" do
    visit artist_url(artist1)
    expect(page).to have_text(song1.name)
    expect(page).to have_text(song2.name)
    click_link("Delete All Songs")
    expect(current_path).to eq(artist_path(artist1))
    expect(page).not_to have_text(song1.name)
    expect(page).not_to have_text(song2.name)
  end

  it "clicking delete artist will delete artist" do
    visit root_url
    expect(page).to have_text(artist1.name)
    visit artist_url(artist1)
    click_link("Delete Artist")
    visit root_url
    expect(page).not_to have_text(artist1.name)
  end

  it "clicking delete in the box for song1 will delete song1", js: true do
    visit artist_path(artist1)
    expect(page).to have_text(song1.name)
    expect(page).to have_text(song2.name)
    within("#song_#{song1.id}") do
      click_link("Delete")
    end
    expect(current_path).to eq(artist_path(artist1))
    expect(page).not_to have_text(song1.name)
    expect(page).to have_text(song2.name)
  end

  it "a song can be added without leaving the page", js: true do
    visit artist_path(artist1)
    click_link("Add Song")
    click_link(album1.name)
    fill_in "song-name-field", with: "kabouterlied"
    fill_in "track-number-field", with: 42
    click_button("Save")
    expect(page).to have_text("kabouterlied")
  end
end
