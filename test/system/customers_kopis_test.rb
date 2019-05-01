require "application_system_test_case"

class CustomersKopisTest < ApplicationSystemTestCase
  setup do
    @customers_kopi = customers_kopis(:one)
  end

  test "visiting the index" do
    visit customers_kopis_url
    assert_selector "h1", text: "Customers Kopis"
  end

  test "creating a Customers kopi" do
    visit customers_kopis_url
    click_on "New Customers Kopi"

    fill_in "Customer", with: @customers_kopi.customer_id
    fill_in "Kopi", with: @customers_kopi.kopi_id
    click_on "Create Customers kopi"

    assert_text "Customers kopi was successfully created"
    click_on "Back"
  end

  test "updating a Customers kopi" do
    visit customers_kopis_url
    click_on "Edit", match: :first

    fill_in "Customer", with: @customers_kopi.customer_id
    fill_in "Kopi", with: @customers_kopi.kopi_id
    click_on "Update Customers kopi"

    assert_text "Customers kopi was successfully updated"
    click_on "Back"
  end

  test "destroying a Customers kopi" do
    visit customers_kopis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customers kopi was successfully destroyed"
  end
end
