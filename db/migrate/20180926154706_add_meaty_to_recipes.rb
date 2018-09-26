class AddMeatyToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :meaty, :float
  end
end
