require 'rails_helper'

RSpec.describe AlbumImage, type: :model do

  describe "validations" do
    it { is_expected.to validate_presence_of(:image) }
  end

  describe "associations" do
    it {should have_many(:songs)}
  end
end
