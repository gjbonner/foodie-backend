class LikeSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :recipe_id, :alt_id_id
end
