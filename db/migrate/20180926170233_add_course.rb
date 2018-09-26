class AddCourse < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :course, :string
  end
end
