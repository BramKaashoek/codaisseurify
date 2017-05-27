class Album < ApplicationRecord
  belongs_to :artist
  has_many :songs

  mount_uploader :image, ImageUploader
end
