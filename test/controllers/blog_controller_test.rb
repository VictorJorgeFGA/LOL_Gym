require "test_helper"

class BlogControllerTest < ActionDispatch::IntegrationTest
  test "should get game_updates" do
    get blog_game_updates_url
    assert_response :success
  end

  test "should get champions" do
    get blog_champions_url
    assert_response :success
  end

  test "should get routes" do
    get blog_routes_url
    assert_response :success
  end

  test "should get items" do
    get blog_items_url
    assert_response :success
  end

  test "should get game_modes" do
    get blog_game_modes_url
    assert_response :success
  end

  test "should get policy" do
    get blog_policy_url
    assert_response :success
  end

  test "should get staff_area" do
    get blog_staff_area_url
    assert_response :success
  end
  
  test "should get news" do
    get blog_news_url
    assert_response :success
  end
end
