class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render json: @recipes
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
    @ingredients = @recipe.ingredients
    @user = @recipe.user
    @items = []
    @ingredients.each do |ing|
      @items << {amount: ing.amount, measurement: ing.measurement, name: (Item.find(ing.item_id)).name}
    end
    @recetta = {recipe: @recipe, ingredients: @items, author: @user}
    render json: @recetta
  end
end
