require 'rails_helper'

describe "remove all of an artists song and have the view updated" do
  before { login_as user }

  let(:user) { create :user, email: "current@user.com", password: 123456 }

  let(:artist1) { create :artist, name:"henk", remote_image_url: "http://res.cloudinary.com/dr9a28l84/image/upload/v1495710094/belakor_ogbgsg.jpg"}
  let(:artist2) { create :artist, remote_image_url: "http://res.cloudinary.com/dr9a28l84/image/upload/v1495710094/belakor_ogbgsg.jpg" }

  it "deletes all of this artists songs" do
    expect(artist1)

  end

end
