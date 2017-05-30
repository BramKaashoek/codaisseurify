class Album < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :artist
  has_many :songs, dependent: :destroy


  validates :name, :image, :year, presence: true
  validates :year, numericality: {more_than_or_equal_to: 900, less_than_or_equal_to: 2100 }
end
