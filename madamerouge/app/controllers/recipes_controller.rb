class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render json: @recipes
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
    @ingredients = @recipe.ingredients
    @recetta = {recipe: @recipe, ingredients: @ingredients}
    render json: @recetta
  end
end
