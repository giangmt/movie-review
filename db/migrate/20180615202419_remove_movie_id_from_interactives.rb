class RemoveMovieIdFromInteractives < ActiveRecord::Migration[5.2]
  def change
    remove_column :interactives, :movie_id
  end
end
