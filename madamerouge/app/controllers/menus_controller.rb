class MenusController < ApplicationController
  def index
    @menu = Menu.current
    @info = []
    @menu.menu_items.each do |item|
      @info << Recipe.find(item.recipe_id)
    end
    @all = {menu: @menu, menu_items: @info}
    render json: @all
  end
end
