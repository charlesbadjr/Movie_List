require 'test_helper'

class ShopListsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shop_lists_index_url
    assert_response :success
  end

  test "should get show" do
    get shop_lists_show_url
    assert_response :success
  end

  test "should get new" do
    get shop_lists_new_url
    assert_response :success
  end

end
