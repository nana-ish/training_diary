class DiaryBlogsController < ApplicationController


  def index
    @blog = DiaryBlog.new
    @blogs = DiaryBlog.all
    @calendar = Calendar.new
    @calendars = Calendar.all
    # binding.pry
  end

  def create
    @blog = DiaryBlog.new(blog_parameter)
    @blog.calendar_id = Calendar.find_by(name: params[:diary_blog][:calendar_id]).id
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
