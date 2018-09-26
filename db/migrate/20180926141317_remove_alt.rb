class RemoveAlt < ActiveRecord::Migration[5.2]
  def change
    remove_column :likes, :alt_id_id
  end
end
