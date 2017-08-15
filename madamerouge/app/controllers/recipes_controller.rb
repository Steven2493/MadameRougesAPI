class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render json: @recipes
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
    @ingredients = @recipe.ingredients.order(:item_id)
    @recetta = {recipe: @recipe, ingredients: @ingredients, user: @recipe.user.username, items: @recipe.items.order(:id) }
    render json: @recetta
  end
end
