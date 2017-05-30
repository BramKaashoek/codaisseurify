class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  has_many :albums, dependent: :destroy
  has_one :artist_image, dependent: :destroy

  validates :name, :genre, :country, presence: true
  validates :image, presence: true

  mount_uploader :image, ImageUploader

  def self.order_by_name
    order(:name)
  end

  def self.reverse_order_by_name
    order(:name).reverse
  end

  def self.order_by_creation_date
    order(:created_at)
  end

  def self.reverse_order_by_creation_date
    order(:created_at).reverse
  end


end
