class Remove < ActiveRecord::Migration[5.2]
  def change
     remove_column :likes, :alt_id_id
     add_column :likes, :alt_id_id, :string
  end
end
