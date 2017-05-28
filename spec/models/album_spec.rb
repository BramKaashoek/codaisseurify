require 'rails_helper'

RSpec.describe Album, type: :model do

  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:image) }
    it { is_expected.to validate_presence_of(:year) }
    it { is_expected.to validate_numericality_of(:year) }
  end

  describe "associations" do
    it { should belong_to(:artist) }
    it { should have_many(:songs) }
  end


end
