class DiaryBlogsController < ApplicationController

  def new
    @blog = Blog.new
  end

  def index
    @blogs = DiaryBlog.all
    @blog = DiaryBlog.new
  end

  def create
    DiaryBlog.new(blog_parameter)
    redirect_to request.referer
  end

  def show
  end

  private

  def blog_parameter
    params.require(:diary_blog).permit(:title, :content, :start_time)
  end
end
