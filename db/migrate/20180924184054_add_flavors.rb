class AddFlavors < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :sweet, :float
    add_column :recipes, :salty, :float
    add_column :recipes, :bitter, :float
    add_column :recipes, :piquant, :float
  end
end
