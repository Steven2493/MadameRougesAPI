class MenusController < ApplicationController
  def index
    @menu = Menu.current
    # @menu.start_at = @menu.start_at.strftime("%m/%d/%Y")
    # @menu.end_at = @menu.end_at.strftime("%m/%d/%Y")
    @menu_hash = {end_at: @menu.end_at.strftime("%m/%d/%Y"), start_at: @menu.start_at.strftime("%m/%d/%Y"), id: @menu.id}
    @info = []
    @menu.menu_items.each do |item|
      @info << Recipe.find(item.recipe_id)
    end
    @all = {menu: @menu_hash, menu_items: @info}
    render json: @all
  end
end
