require 'rails_helper'

RSpec.describe Artist, type: :model do

  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:genre) }
  end

  describe "associations" do
    it { should have_many(:songs) }
    it { should have_one (:artist_image) }
  end

  describe ".order_by_name_descending" do
    let(:abbath)    { create :artist, name: "Abbath" }
    let(:zztop)     { create :artist, name: "ZZ Top" }
    let(:katatonia) { create :artist, name: "Katatonia" }

    it "returns array of bands ordered by name" do
      expect(Artist.order_by_name).to match_array [abbath, katatonia, zztop]
    end
  end

  describe ".order_by_creation_date" do
    let(:abbath)    { create :artist }
    let(:zztop)     { create :artist }
    let(:katatonia) { create :artist }

    it "returns array of bands ordered by creation datetime" do
      expect(Artist.order_by_creation_date).to match_array [abbath, zztop, katatonia]
    end
  end

end
