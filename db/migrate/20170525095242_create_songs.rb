class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :album
      t.integer :track_number
      t.integer :year
      t.references :artist, foreign_key: true
      t.references :album_image, foreign_key: true

      t.timestamps
    end
  end
end
