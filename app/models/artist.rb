class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_many :albums, dependent: :destroy
  has_one :artist_image, dependent: :destroy

  validates :name, :genre, presence: true

  def self.order_by_name
    order(:name)
  end

  def self.order_by_creation_date
    order(:created_at)
  end
end
