class MenusController < ApplicationController

  def show
    @menu = Menu.find(params[:id])
  end

  def new
    @menu = Menu.new
    @item = Item.new
  end

  def create
  end

end