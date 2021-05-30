require "test_helper"

class BlogControllerTest < ActionDispatch::IntegrationTest
  test "should get game_updates" do
    get game_updates_url
    assert_response :success
  end

  test "should get champions" do
    get champions_url
    assert_response :success
  end

  test "should get routes" do
    get routes_url
    assert_response :success
  end

  test "should get items" do
    get items_url
    assert_response :success
  end

  test "should get game_modes" do
    get game_modes_url
    assert_response :success
  end

  test "should get policy" do
    get policy_url
    assert_response :success
  end

  test "should get not staff_area" do
    get staff_area_url
    assert_response :success
  end
  
  test "should get news" do
    get news_url
    assert_response :success
  end
end
