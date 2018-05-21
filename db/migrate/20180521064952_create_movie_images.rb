class CreateMovieImages < ActiveRecord::Migration[5.2]
  def change
    create_table :movie_images do |t|
      t.string :image_url
      t.integer :movie_id

      t.timestamps
    end
  end
end
