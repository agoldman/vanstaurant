class BlogsController < ApplicationController

  def index
    @blogs = Blog.order('created_at DESC')
  end

  def new
    @blog = Blog.new
    @blog.title = "Title"
    @blog.content = "Here is some placeholder content. "
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def mercury_update
    blog = Blog.find(params[:id])
    blog.title = params[:blog_title][:value] if params[:blog_title]
    blog.author = current_user.name if current_user
    blog.content = params[:blog_content][:value] if params[:blog_content]
    blog.published = to_boolean(params[:published])
    blog.save
    render text: ""
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def mercury_create
    blog = Blog.new
    blog.title = params[:blog_title][:value] if params[:blog_title]
    blog.author = current_user.name if current_user
    blog.content = params[:blog_content][:value] if params[:blog_content]
    blog.published = to_boolean(params[:published])
    blog.save
    render text: ""
  end

  def to_boolean(str)
      str == 'true'
    end

end