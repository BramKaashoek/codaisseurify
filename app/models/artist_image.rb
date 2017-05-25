class ArtistImage < ApplicationRecord
  belongs_to :artist

  validates :image, presence: true
end
