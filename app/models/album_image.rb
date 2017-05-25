class AlbumImage < ApplicationRecord
  has_many :songs

  validates :image, presence: true

  mount_uploader :image, ImageUploader
end
