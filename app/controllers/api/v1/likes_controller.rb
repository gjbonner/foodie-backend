class Api::V1::LikesController < ApplicationController
  skip_before_action :authorized, only: [:index, :create_like, :delete_like]

  def index
    likes = Like.all
    recipes = likes.map{ |r| r.recipe }
    render json: recipes
  end

  def create_like
    recipe = Recipe.create(recipe_params)
    like = Like.create(user_id: 1, recipe_id: recipe.id)
    if like.valid? && recipe.valid?
      like.save
      recipe.save
      render json: { success: 'like saved' }, status: :accepted
    else
      render json: { error: 'failed' }, status: :failed
    end
  end

  def delete_like
    recipe = Recipe.find_by(delete_params)
    recipe.destroy
    render json: { success: 'like deleted' }, status: :accepted
  end


  private

  def delete_params
    params.require(:recipe).permit(:id)
  end

  def recipe_params
    params.require(:new_recipe).permit(:imageURL, :ingredients, :recipeName, :rating, :bitter, :salty, :sweet, :piquant, :meaty, :url, :alt_id, :course, :rCourse, :rCuisine)
  end
end
