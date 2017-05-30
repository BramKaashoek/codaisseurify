class Song < ApplicationRecord
  belongs_to :album

  validates :name, presence: true
  validates :track_number, presence: true, length: { maximum: 3 }
end
