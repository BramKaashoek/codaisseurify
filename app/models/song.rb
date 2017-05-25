class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :album_image

  validates :name, :album, :year, presence: true
end
