class Api::V1::LikesController < ApplicationController

	def index
		@likes = Like.all
		render json: @likes 
	end

	def create
		@recipe = Recipe.find(params[:recipe_id])
		@like = @recipe.likes.create
		render json: @like
	end

	def show
		@like = Like.find(params[:id])
		render json: @like
	end

	private 
		def like_params
			params.require(:like).permit(:id, :recipe_id)
		end
end