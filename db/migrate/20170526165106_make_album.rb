class MakeAlbum < ActiveRecord::Migration[5.1]
  def change
    create_table :album do |t|
      t.string :image
      t.string :name
      t.integer :year
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
