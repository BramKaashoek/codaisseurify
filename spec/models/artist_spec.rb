require 'rails_helper'

RSpec.describe Artist, type: :model do

  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:genre) }
    it { is_expected.to validate_presence_of(:country) }
  end

  describe "associations" do
    it { should have_many (:albums) }
    it { should have_many(:songs).through(:albums) }
  end
end
