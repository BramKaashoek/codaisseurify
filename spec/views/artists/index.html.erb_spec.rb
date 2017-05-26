require "rails_helper"

describe "artists/index.html.erb" do
  let!(:artist1) { create :artist }
  let!(:artist2) { create :artist }

  it "shows the information for all bands" do
    render
    expect(rendered).to have_content(artist1.name)
    expect(rendered).to have_content(artist1.country)
    expect(rendered).to have_content(artist2.name)
    expect(rendered).to have_content(artist2.country)
  end
end
