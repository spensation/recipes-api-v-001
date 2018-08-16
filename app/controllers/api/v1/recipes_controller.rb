class Api::V1::RecipesController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def index
    @recipes = Recipe.all
    render json: @recipes
  end

  def create
    @recipe = Recipe.create(recipe_params)
    render json: @recipe
  end

  def show
    @recipe = Recipe.find(params[:id])
    render json: @recipe, status: 201
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update_attributes(recipe_params)
    render json: @recipe
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    if @recipe.destroy
        render json: :no_content, status: 202
    else
      render json: {}, status: 400
    end
  end

  private
    def recipe_params
      params.require(:recipe).permit(:id, :title, :category, :serves, :prep_time, :cook_time, :total_time, :directions, :food_image, {:ingredients_attributes => [:name, :recipe_id]})
    end

end