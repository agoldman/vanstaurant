class PagesController < ApplicationController

  def index
    @blogs = Blog.all
    @menu = Menu.most_recent if Menu.upcoming?
  end

  def about
    render 'about'
  end

end