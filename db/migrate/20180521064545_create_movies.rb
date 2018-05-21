class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :youtube_id
      t.text :synopsis
      t.string :length
      t.integer :premiere
      t.integer :genre_id
      t.integer :director_id

      t.timestamps
    end
  end
end
