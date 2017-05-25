require 'rails_helper'

RSpec.describe Song, type: :model do

  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:year) }
  end

  describe "associations" do
    it { should belong_to(:artist) }
    it { should have_a(:abum_image)}
  end

end
