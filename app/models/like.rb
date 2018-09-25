class Like < ApplicationRecord
  belongs_to :user
  belongs_to :recipe, :foreign_key => 'alter_id_id'
end
