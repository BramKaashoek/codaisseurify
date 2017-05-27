class Album < ApplicationRecord
  belongs_to :artist
  has_many :songs

  mount_uploader :image, ImageUploader

  validates :name, presence: true
end
