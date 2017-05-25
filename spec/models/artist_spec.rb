require 'rails_helper'

RSpec.describe Artist, type: :model do

  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:genre) }
  end

  describe "associations" do
    it { should have_many(:songs) }
    it { should have_a (:artist_image)}
  end

  describe "order_by_name" do
  end
  describe "order_by_creation_date" do
  end
  
end
