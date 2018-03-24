class Api::V1::CommentsController < ApplicationController
	def index
		if params[:recipe_id]
			@comments = Recipe.find(params[:recipe_id]).comments
			render json: @comments
		else
			@comments = Comment.all
		end
	end

	def create
		@recipe = Recipe.find(params[:recipe_id])
		@comment = @recipe.comments.create(comment_params)
		render json: @comment
	end

	def show
		@comment = Comment.find(params[:id])
		render json: @comment
	end

	private 
		def comment_params
			params.require(:comment).permit(:content, :recipe_id, :id)
		end
end