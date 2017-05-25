require 'rails_helper'

RSpec.describe ArtistImage, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:image) }
  end

  describe "associations" do
    it { should belong_to(:artist) }
  end
end
