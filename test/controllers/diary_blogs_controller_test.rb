require "test_helper"

class DiaryBlogsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get diary_blogs_index_url
    assert_response :success
  end

  test "should get show" do
    get diary_blogs_show_url
    assert_response :success
  end
end
