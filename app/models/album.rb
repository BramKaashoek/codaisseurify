class Album < ApplicationRecord
  belongs_to :artist
  has_many :songs

  mount_uploader :image, ImageUploader

  validates :name, presence: true
  validates :image, presence: true
  validates :year, presence: true
  validates :year, numericality: {more_than_or_equal_to: 900, less_than_or_equal_to: 2100 }
end
