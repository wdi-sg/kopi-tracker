require 'test_helper'

class CustomersKopisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customers_kopi = customers_kopis(:one)
  end

  test "should get index" do
    get customers_kopis_url
    assert_response :success
  end

  test "should get new" do
    get new_customers_kopi_url
    assert_response :success
  end

  test "should create customers_kopi" do
    assert_difference('CustomersKopi.count') do
      post customers_kopis_url, params: { customers_kopi: { customer_id: @customers_kopi.customer_id, kopi_id: @customers_kopi.kopi_id } }
    end

    assert_redirected_to customers_kopi_url(CustomersKopi.last)
  end

  test "should show customers_kopi" do
    get customers_kopi_url(@customers_kopi)
    assert_response :success
  end

  test "should get edit" do
    get edit_customers_kopi_url(@customers_kopi)
    assert_response :success
  end

  test "should update customers_kopi" do
    patch customers_kopi_url(@customers_kopi), params: { customers_kopi: { customer_id: @customers_kopi.customer_id, kopi_id: @customers_kopi.kopi_id } }
    assert_redirected_to customers_kopi_url(@customers_kopi)
  end

  test "should destroy customers_kopi" do
    assert_difference('CustomersKopi.count', -1) do
      delete customers_kopi_url(@customers_kopi)
    end

    assert_redirected_to customers_kopis_url
  end
end
