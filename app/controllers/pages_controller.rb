class PagesController < ApplicationController

  after_action :verify_authorized, :only => :admin

  def index
    @blogs = Blog.published(params[:page])
    @menu = Menu.latest if Menu.upcoming?
    render layout: "dark-nav"
  end

  def about
    render layout: "dark-backgrnd"
  end

  def admin
    authorize :page, :admin?
    render 'admin'
  end

end