class PagesController < ApplicationController

  def index
    @blogs = Blog.all
    @menu = Menu.latest if Menu.upcoming?
  end

  def about
    render 'about'
  end

end