class AddColumnsToRecipe < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :recipeName, :string
  end
end
