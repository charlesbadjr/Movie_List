require 'test_helper'

class ActivitysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get activitys_index_url
    assert_response :success
  end

  test "should get show" do
    get activitys_show_url
    assert_response :success
  end

  test "should get new" do
    get activitys_new_url
    assert_response :success
  end

end
