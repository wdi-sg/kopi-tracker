require 'test_helper'

class KopisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kopis_index_url
    assert_response :success
  end

  test "should get show" do
    get kopis_show_url
    assert_response :success
  end

  test "should get new" do
    get kopis_new_url
    assert_response :success
  end

  test "should get edit" do
    get kopis_edit_url
    assert_response :success
  end

  test "should get create" do
    get kopis_create_url
    assert_response :success
  end

  test "should get update" do
    get kopis_update_url
    assert_response :success
  end

  test "should get destroy" do
    get kopis_destroy_url
    assert_response :success
  end

  test "should get kopi_params" do
    get kopis_kopi_params_url
    assert_response :success
  end

end
