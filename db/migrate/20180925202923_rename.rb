class Rename < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :cuisine
    remove_column :recipes, :course
    add_column :recipes, :rCuisine, :string
    add_column :recipes, :rCourse, :string
  end
end
