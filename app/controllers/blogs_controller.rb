class BlogsController < ApplicationController

  def index
    @blogs = Blog.order('created_at DESC')
  end

  def new
    @blog = Blog.new
    @blog.title = "Title"
    @blog.content = "Write the blog post here. Make it real good!"
    render layout: "no-nav"
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

  def destroy
    @blog = Blog.find(params[:id])
    title = @blog.title
    if @blog.destroy
      flash[:notice] = "\"#{title}\" was deleted successfully."
      redirect_to blogs_path
    else
      flash[:error] = "There was an error deleting this blog."
      render :show
    end
  end

end