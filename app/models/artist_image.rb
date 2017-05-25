class ArtistImage < ApplicationRecord
  belongs_to :artist

  validates :image, presence: true

  mount_uploader :image, ImageUploader
end
