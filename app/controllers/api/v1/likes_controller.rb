class Api::V1::LikesController < ApplicationController
  skip_before_action :authorized, only: [:index]

  def index
    like  = Like.first
    render json: like.recipe
  end
end
