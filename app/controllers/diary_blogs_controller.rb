class DiaryBlogsController < ApplicationController
  
  def new
    @blog = Blog.new
  end
  
  def index
    @blogs = DiaryBlog.all
    @blog = DiaryBlog.new
  end

  def show
  end
  
end
