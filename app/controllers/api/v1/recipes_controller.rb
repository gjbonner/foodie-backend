class Api::V1::RecipesController < ApplicationController
  skip_before_action :authorized, only: [:index, :search_recipes, :create_recipes]

  def index
    recipes = Recipe.all
    render json: recipes
  end

  def search_recipes
    url = 'http://api.yummly.com/v1/api/recipes?_app_id='+ENV['recipe_app_id']+'&_app_key='+ENV['recipe_api_key']+'&q='+params[:ingredients]
    request = RestClient.get(url)
    response = JSON.parse(request)
    render json: response
  end

  def create_recipes
    @recipe = Recipe.create(params[:recipe_obj])
      if @recipe.valid?
      @recipe.save
      render json: { success: 'recipe saved' }, status: :accepted
    else
      render json: { error: 'failed' }, status: :failed
    end
  end

  private
  def recipe_params
    params.require(:recipe).permit(:ingredients, :recipe_obj, :id)
  end
end
