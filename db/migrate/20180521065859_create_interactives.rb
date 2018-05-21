class CreateInteractives < ActiveRecord::Migration[5.2]
  def change
    create_table :interactives do |t|
      t.integer :user_id
      t.integer :movie_id
      t.integer :interactable_type

      t.timestamps
    end
  end
end
