class RemovingUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :user
  end
end
