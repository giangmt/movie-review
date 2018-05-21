class CreateDirectors < ActiveRecord::Migration[5.2]
  def change
    create_table :directors do |t|
      t.string :name
      t.string :image_url
      t.text :description

      t.timestamps
    end
  end
end
