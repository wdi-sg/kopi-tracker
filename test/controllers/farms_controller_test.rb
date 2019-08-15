require 'test_helper'

class FarmsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get farms_index_url
    assert_response :success
  end

  test "should get show" do
    get farms_show_url
    assert_response :success
  end

  test "should get new" do
    get farms_new_url
    assert_response :success
  end

  test "should get edit" do
    get farms_edit_url
    assert_response :success
  end

end
