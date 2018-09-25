class AddAltId < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :alt_id, :string
  end
end
