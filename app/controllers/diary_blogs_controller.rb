class DiaryBlogsController < ApplicationController


  def index
    @blog = DiaryBlog.new
    @blogs = DiaryBlog.all
    # binding.pry
  end

  def create
    @blog = DiaryBlog.new(blog_parameter)
    @blog.save
    redirect_to request.referer
  end

  def show
  end

  private

  def blog_parameter
    params.require(:diary_blog).permit(:title,:content,:start_time)
  end

end
