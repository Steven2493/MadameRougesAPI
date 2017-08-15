class MenusController < ApplicationController
  def index
    @menu = Menu.current
  end
end
