class AddImgUrl < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :imageURL, :string
  end
end
