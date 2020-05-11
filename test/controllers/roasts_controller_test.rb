require 'test_helper'

class RoastsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @roast = roasts(:one)
  end

  test "should get index" do
    get roasts_url
    assert_response :success
  end

  test "should get new" do
    get new_roast_url
    assert_response :success
  end

  test "should create roast" do
    assert_difference('Roast.count') do
      post roasts_url, params: { roast: { name: @roast.name } }
    end

    assert_redirected_to roast_url(Roast.last)
  end

  test "should show roast" do
    get roast_url(@roast)
    assert_response :success
  end

  test "should get edit" do
    get edit_roast_url(@roast)
    assert_response :success
  end

  test "should update roast" do
    patch roast_url(@roast), params: { roast: { name: @roast.name } }
    assert_redirected_to roast_url(@roast)
  end

  test "should destroy roast" do
    assert_difference('Roast.count', -1) do
      delete roast_url(@roast)
    end

    assert_redirected_to roasts_url
  end
end
