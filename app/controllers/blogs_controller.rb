class BlogsController < ApplicationController

  def new
    @blog = Blog.new
    @blog.title = "Title"
    @blog.content = "Here is some placeholder content. "

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