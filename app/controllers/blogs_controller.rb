class BlogsController < ApplicationController

  def new
    @blog = Blog.new
    @blog.title = "Title"
    @blog.content = "Here is some placeholder content. "
  end

  def mercury_create
    blog = Blog.new
    blog.title = params[:content][:blog_title][:value] if params[:content] && params[:content][:blog_title]
    blog.author = current_user.name
    blog.content = params[:content][:blog_content][:value] if params[:cotent] && params[:content][:blog_content]
    blog.save
    render text: ''
  end

end