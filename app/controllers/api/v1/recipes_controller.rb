class Api::V1::RecipesController < ApplicationController
  skip_before_action :authorized, only: [:index, :search_recipes]

  def index
    recipes = Recipe.all
    render json: recipes
  end

  def search_recipes
    url = 'http://api.yummly.com/v1/api/recipes?_app_id=aee60b04&_app_key=a666435b0f14584489cba20d61689784&q='+params[:ingredients]
    request = RestClient.get(url)
    response = JSON.parse(request)
    render json: response
  end

  private
  def recipe_params
    params.require(:recipe).permit(:ingredients)
  end
end
