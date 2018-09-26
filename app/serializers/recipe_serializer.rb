class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :recipeName, :ingredients, :rating, :imageURL, :sweet, :salty, :bitter, :piquant, :url, :alt_id, :rCuisine, :rCourse
end
