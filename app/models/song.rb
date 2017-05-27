class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :album

  validates :name, presence: true
end
