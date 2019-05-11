class CreateLyrics < ActiveRecord::Migration[5.0]
  def change
    create_table :lyrics do |t|
      t.string :title
      t.string :artist
      t.string :song
      t.string :song_lyrics
      t.timestamps
    end
  end
end
