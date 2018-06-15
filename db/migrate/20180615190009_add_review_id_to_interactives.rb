class AddReviewIdToInteractives < ActiveRecord::Migration[5.2]
  def change
    add_column :interactives, :review_id, :integer
  end
end
