class AlbumImage < ApplicationRecord
  has_many :songs

  validates :image, presence: true
end
