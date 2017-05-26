class ArtistImage < ActiveRecord::Migration[5.1]
  def change
    create_table :artist_images do |t|
      t.references :artist, foreign_key: true
      t.string :image

      t.timestamps
    end
  end
end
