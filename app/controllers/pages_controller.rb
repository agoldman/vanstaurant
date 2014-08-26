class PagesController < ApplicationController

  after_action :verify_authorized, :only => :admin

  layout "simple", only: [:about, :admin]
  
  def index
    @blogs = Blog.published
    @menu = Menu.latest if Menu.upcoming?
  end

  def about
    render 'about'
  end

  def admin
    authorize :page, :admin?
    render 'admin'
  end

end