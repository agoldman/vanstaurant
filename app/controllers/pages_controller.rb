class PagesController < ApplicationController

  def index
    @blogs = Blog.all
    @menu = Menu.latest if Menu.upcoming?
  end

  def about
    render 'about'
  end

  def admin
    #authorize :page, :admin?
    render 'admin'
  end

end