class AddCuisine < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :cuisine, :string
    add_column :recipes, :course, :string
  end
end
