class BlogsController < ApplicationController

  def new
    @blog = Blog.new
    @blog.title = "Title"
    @blog.content = "Here is some placeholder content. "
  end

end