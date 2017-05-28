require 'rails_helper'

RSpec.describe Artist, type: :model do

  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:genre) }
    it { is_expected.to validate_presence_of(:country) }
  end

  describe "associations" do
    it { should have_many(:songs) }
    it { should have_one (:artist_image) }
  end

  let!(:abbath)    { create :artist, name: "Abbath" }
  let!(:zztop)     { create :artist, name: "ZZ Top" }
  let!(:katatonia) { create :artist, name: "Katatonia" }

  describe ".order_by_name" do
    it "returns array of bands ordered by name" do
      expect(Artist.order_by_name).to match_array [abbath, katatonia, zztop]
    end
  end

  describe ".reverse_order_by_name" do
    it "returns array of bands reverse ordered by name" do
      expect(Artist.order_by_name).to match_array [ zztop, katatonia, abbath]
    end
  end

  describe ".order_by_creation_date" do
    it "returns array of bands ordered by creation datetime" do
      expect(Artist.order_by_creation_date).to match_array [abbath, zztop, katatonia]
    end
  end

  describe ".reverse_order_by_creation_date" do
    it "returns array of bands reverse ordered by creation datetime" do
      expect(Artist.order_by_creation_date).to match_array [zztop, abbath,  katatonia]
    end
  end

end
