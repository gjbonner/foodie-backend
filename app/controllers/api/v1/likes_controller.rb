class Api::V1::LikesController < ApplicationController
  skip_before_action :authorized, only: [:index, :create_like]

  def index
    likes = Like.all
    recipes = likes.map{ |r| r.recipe }
    render json: recipes
  end

  def create_like
    like = Like.create(like_params)
    if like.valid?
      like.save
      render json: { success: 'like saved' }, status: :accepted
    else
      render json: { error: 'failed' }, status: :failed
    end
  end

  private
  def like_params
    params.permit(:user_id, :recipe_id, :alt_id_id, :like)
  end
end
