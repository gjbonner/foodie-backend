class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :recipe_obj, :recipeName, :ingredients, :rating, :imageURL, :sweet, :salty, :bitter, :piquant, :url, :alt_id, :rCuisine, :rCourse
end
