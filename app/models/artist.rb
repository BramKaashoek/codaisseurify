class Artist < ApplicationRecord
  mount_uploader :image, ImageUploader
  
  has_many :albums, dependent: :destroy
  has_many :songs, through: :albums

  validates :name, :genre, :country, :image, presence: true


end
