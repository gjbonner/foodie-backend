class RemoveObj < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :recipe_obj
  end
end
