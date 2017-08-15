class MenuItemsController < ApplicationController

  def create
    menu_item = MenuItem.new(menu: Menu.find_by(id: params[:menu_id]), resipe: Recipe.find_by(id: params[:recipe_id]))
    if menu_item.save
      render json: {menu_item}
    else
      render status: 400
    end
  end

  def destroy
    menu_item.find_by(id: params[:menu_item][:id])
    menu_item.destroy
  end

end
