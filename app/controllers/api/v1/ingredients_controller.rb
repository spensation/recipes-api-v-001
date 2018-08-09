class API::V1::IngredientsController < ApplicationController
	def create
		@recipe = Recipe.find(params[:recipe_id])
		@ingredient = @recipe.ingredients.build(ingredient_params)
		render json: @ingredient
	end

	def destroy
	    @ingredient = Ingredient.find(params[:id])
	    if @ingredient.destroy
	        render json: :no_content, status: 202
	    else
	      render json: {}, status: 400
	    end
	end

	private
		def ingredient_params
	      params.require(:ingredient).permit(:name, :recipe_id)
	    end
end
