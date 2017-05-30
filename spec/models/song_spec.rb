require 'rails_helper'

RSpec.describe Song, type: :model do

  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:track_number) }
  end

  describe "associations" do
    it { should belong_to(:album) }
  end

end
