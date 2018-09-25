class AddReferenceToLike < ActiveRecord::Migration[5.2]
  def change
    add_reference :likes, :alt_id
  end
end
