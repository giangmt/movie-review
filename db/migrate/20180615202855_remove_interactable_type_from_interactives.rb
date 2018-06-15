class RemoveInteractableTypeFromInteractives < ActiveRecord::Migration[5.2]
  def change
    remove_column :interactives, :interactable_type
  end
end
