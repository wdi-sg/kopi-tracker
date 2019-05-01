require 'test_helper'

class KopisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kopi = kopis(:one)
  end

  test "should get index" do
    get kopis_url
    assert_response :success
  end

  test "should get new" do
    get new_kopi_url
    assert_response :success
  end

  test "should create kopi" do
    assert_difference('Kopi.count') do
      post kopis_url, params: { kopi: { name: @kopi.name, references: @kopi.references } }
    end

    assert_redirected_to kopi_url(Kopi.last)
  end

  test "should show kopi" do
    get kopi_url(@kopi)
    assert_response :success
  end

  test "should get edit" do
    get edit_kopi_url(@kopi)
    assert_response :success
  end

  test "should update kopi" do
    patch kopi_url(@kopi), params: { kopi: { name: @kopi.name, references: @kopi.references } }
    assert_redirected_to kopi_url(@kopi)
  end

  test "should destroy kopi" do
    assert_difference('Kopi.count', -1) do
      delete kopi_url(@kopi)
    end

    assert_redirected_to kopis_url
  end
end
